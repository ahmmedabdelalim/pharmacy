<?php

namespace App\Http\Controllers\Admin;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Product;
use App\Model\Review;
use App\Model\Translation;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use Rap2hpoutre\FastExcel\FastExcel;

class ProductController extends Controller
{
    public function variant_combination(Request $request)
    {
        $options = [];
        $price = $request->price;
        $product_name = $request->name;

        if ($request->has('choice_no')) {
            foreach ($request->choice_no as $key => $no) {
                $name = 'choice_options_' . $no;
                $my_str = implode('', $request[$name]);
                array_push($options, explode(',', $my_str));
            }
        }

        $result = [[]];
        foreach ($options as $property => $property_values) {
            $tmp = [];
            foreach ($result as $result_item) {
                foreach ($property_values as $property_value) {
                    $tmp[] = array_merge($result_item, [$property => $property_value]);
                }
            }
            $result = $tmp;
        }
        $combinations = $result;
        return response()->json([
            'view' => view('admin-views.product.partials._variant-combinations', compact('combinations', 'price', 'product_name'))->render(),
        ]);
    }

    public function get_categories(Request $request)
    {
        $cat = Category::where(['parent_id' => $request->parent_id])->get();
        $res = '<option value="' . 0 . '" disabled selected>---Select---</option>';
        foreach ($cat as $row) {
            if ($row->id == $request->sub_category) {
                $res .= '<option value="' . $row->id . '" selected >' . $row->name . '</option>';
            } else {
                $res .= '<option value="' . $row->id . '">' . $row->name . '</option>';
            }
        }
        return response()->json([
            'options' => $res,
        ]);
    }

    public function index()
    {
        $categories = Category::where(['position' => 0])->get();
        return view('admin-views.product.index', compact('categories'));
    }

    public function list(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $query = Product::where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->orWhere('id', 'like', "%{$value}%")
                        ->orWhere('name', 'like', "%{$value}%");
                }
            })->latest();
            $query_param = ['search' => $request['search']];
        }else{
            $query = Product::latest();
        }
        $products = $query->paginate(Helpers::getPagination())->appends($query_param);
        //  dd($products);
        return view('admin-views.product.list', compact('products','search'));
    }

    public function search(Request $request)
    {
        $key = explode(' ', $request['search']);
        $products = Product::where(function ($q) use ($key) {
            foreach ($key as $value) {
                $q->orWhere('name', 'like', "%{$value}%");
            }
        })->get();
        return response()->json([
            'view' => view('admin-views.product.partials._table', compact('products'))->render(),
        ]);
    }

    public function view($id)
    {
        $product = Product::where(['id' => $id])->first();
        $reviews = Review::where(['product_id' => $id])->latest()->paginate(20);
        return view('admin-views.product.view', compact('product', 'reviews'));
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|unique:products',
            'category_id' => 'required',
            'images' => 'required',
        ], [
            'name.required' => 'Product name is required!',
            'category_id.required' => 'category  is required!',
        ]);

        $img_names = [];
        if (!empty($request->file('images'))) {
            foreach ($request->images as $img) {
                $image_data = Helpers::upload('product/', 'png', $img);
                array_push($img_names, $image_data);
            }
           // $image_data = json_encode($img_names);
        } else {
            $image_data = json_encode([]);
        }

        $p = new Product;
        $p->name = $request->name[array_search('en', $request->lang)];
        $p->composition = $request->composition[array_search('en', $request->lang)];
        $p->indication = $request->indication[array_search('en', $request->lang)];
        $p->dosage = $request->dosage[array_search('en', $request->lang)];
        $p->warnings = $request->warnings[array_search('en', $request->lang)];
        $p->category_id = $request->category_id;
        $p->sub_category = $request->sub_category_id;
        $p->description = $request->description[array_search('en', $request->lang)];
        $p->price = 0;
        $p->image = $image_data;
       // $p->stock = $request->stock;
       // $p->attributes = $request->has('attribute_id') ? json_encode($request->attribute_id) : json_encode([]);
        $p->save();

        $data = [];
        foreach($request->lang as $index=>$key)
        {
            if($request->name[$index] && $key != 'en')
            {
                array_push($data, Array(
                    'translationable_type'  => 'App\Model\Product',
                    'translationable_id'    => $p->id,
                    'locale'                => $key,
                    'key'                   => 'name',
                    'value'                 => $request->name[$index],
                ));
            }
            if($request->description[$index] && $key != 'en')
            {
                array_push($data, Array(
                    'translationable_type'  => 'App\Model\Product',
                    'translationable_id'    => $p->id,
                    'locale'                => $key,
                    'key'                   => 'description',
                    'value'                 => $request->description[$index],
                ));
            }
        }


        Translation::insert($data);

        return response()->json([], 200);
    }

    public function edit($id)
    {
        $product = Product::withoutGlobalScopes()->with('translations')->find($id);
        $product_category = json_decode($product->category_id);
        $categories = Category::where(['parent_id' => 0])->get();
        $sub_categories = Category::where(['position' => 1])->get();
        // dd($product);
        return view('admin-views.product.edit', compact('product', 'product_category', 'sub_categories','categories'));
    }

    public function status(Request $request)
    {
        $product = Product::find($request->id);
        $product->status = $request->status;
        $product->save();
        Toastr::success('Product status updated!');
        return back();
    }

    public function daily_needs(Request $request)
    {
        $product = Product::find($request->id);
        $product->daily_needs = $request->status;
        $product->save();
        return response()->json([], 200);
    }

    public function update(Request $request, $id)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'category_id' => 'required',
        ], [
            'name.required' => 'Product name is required!',
            'category_id.required' => 'category  is required!',
        ]);

        $p = Product::find($id);
        $images = $p->image;
        if (!empty($request->file('images'))) {
            foreach ($request->images as $img) {
                $image_data = Helpers::upload('product/', 'png', $img);
                //array_push($images, $image_data);
            }

        }



        $p->name = $request->name[array_search('en', $request->lang)];
        $p->price = $request->price;
        $p->category_id = $request->category_id;
        $p->sub_category = $request->sub_category_id;
        $p->price = 0;
        $p->composition = $request->composition[array_search('en', $request->lang)];
        $p->indication = $request->indication[array_search('en', $request->lang)];
        $p->dosage = $request->dosage[array_search('en', $request->lang)];
        $p->warnings = $request->warnings[array_search('en', $request->lang)];
        $p->description = $request->description[array_search('en', $request->lang)];
        $p->image = $image_data;
        $p->save();

        // $category = [];
        // if ($request->category_id != null) {
        //     array_push($category, [
        //         'id' => $request->category_id,
        //         'position' => 1,
        //     ]);
        // }
        // if ($request->sub_category_id != null) {
        //     array_push($category, [
        //         'id' => $request->sub_category_id,
        //         'position' => 2,
        //     ]);
        // }
        // if ($request->sub_sub_category_id != null) {
        //     array_push($category, [
        //         'id' => $request->sub_sub_category_id,
        //         'position' => 3,
        //     ]);
        // }
        // $choice_options = [];
        // if ($request->has('choice')) {
        //     foreach ($request->choice_no as $key => $no) {
        //         $str = 'choice_options_' . $no;
        //         if ($request[$str][0] == null) {
        //             $validator->getMessageBag()->add('name', 'Attribute choice option values can not be null!');
        //             return response()->json(['errors' => Helpers::error_processor($validator)]);
        //         }
        //         $item['name'] = 'choice_' . $no;
        //         $item['title'] = $request->choice[$key];
        //         $item['options'] = explode(',', implode('|', preg_replace('/\s+/', ' ', $request[$str])));
        //         array_push($choice_options, $item);
        //     }
        // }
        // $p->choice_options = json_encode($choice_options);
        // $variations = [];
        // $options = [];
        // if ($request->has('choice_no')) {
        //     foreach ($request->choice_no as $key => $no) {
        //         $name = 'choice_options_' . $no;
        //         $my_str = implode('|', $request[$name]);
        //         array_push($options, explode(',', $my_str));
        //     }
        // }

        //Generates the combinations of customer choice options
        // $combinations = Helpers::combinations($options);
        // $stock_count = 0;
        // if (count($combinations[0]) > 0) {
        //     foreach ($combinations as $key => $combination) {
        //         $str = '';
        //         foreach ($combination as $k => $item) {
        //             if ($k > 0) {
        //                 $str .= '-' . str_replace(' ', '', $item);
        //             } else {
        //                 $str .= str_replace(' ', '', $item);
        //             }
        //         }
        //         $item = [];
        //         $item['type'] = $str;
        //         $item['price'] = abs($request['price_' . str_replace('.', '_', $str)]);
        //         $item['stock'] = abs($request['stock_' . str_replace('.', '_', $str)]);
        //         array_push($variations, $item);
        //         $stock_count += $item['stock'];
        //     }
        // } else {
        //     $stock_count = (integer)$request['total_stock'];
        // }

        // if ((integer)$request['total_stock'] != $stock_count) {
        //     $validator->getMessageBag()->add('total_stock', 'Stock calculation mismatch!');
        // }

        // if ($validator->getMessageBag()->count() > 0) {
        //     return response()->json(['errors' => Helpers::error_processor($validator)]);
        // }

        //combinations end
        // $p->variations = json_encode($variations);


        // $p->image = json_encode(array_merge(json_decode($p['image'], true), json_decode($image_data, true)));
        // $p->set_menu = $request->item_type;

        // $p->available_time_starts = $request->available_time_starts;
        // $p->available_time_ends = $request->available_time_ends;



        return response()->json([], 200);
    }

    public function delete(Request $request)
    {
        $product = Product::find($request->id);
        foreach (json_decode($product['image'], true) as $img) {
            if (Storage::disk('public')->exists('product/' . $img)) {
                Storage::disk('public')->delete('product/' . $img);
            }
        }

        $product->delete();
        Toastr::success('Product removed!');
        return back();
    }

    public function remove_image($id, $name)
    {
        if (Storage::disk('public')->exists('product/' . $name)) {
            Storage::disk('public')->delete('product/' . $name);
        }

        $product = Product::find($id);
        $img_arr = [];

            if (strcmp($product['image'], $name) != 0) {
                $img_arr=$product['image'];
            }


        Product::where(['id' => $id])->update([
            'image' => $img_arr,
        ]);

        Toastr::success('Image removed successfully!');
        return back();
    }

    public function bulk_import_index()
    {
        return view('admin-views.product.bulk-import');
    }

    public function bulk_import_data(Request $request)
    {
        try {
            $collections = (new FastExcel)->import($request->file('products_file'));
        } catch (\Exception $exception) {
            Toastr::error('You have uploaded a wrong format file, please upload the right file.');
            return back();
        }

        foreach ($collections as $key => $collection) {
            if ($collection['name'] === "") {
                Toastr::error('Please fill row:' . ($key + 2) . ' field: name ');
                return back();
            } elseif ($collection['description'] === "") {
                Toastr::error('Please fill row:' . ($key + 2) . ' field: description ');
                return back();
            } elseif (!is_numeric($collection['price'])) {
                Toastr::error('Price of row ' . ($key + 2) . ' must be number');
                return back();
            } elseif (!is_numeric($collection['price'])) {
                Toastr::error('Price of row ' . ($key + 2) . ' must be number');
                return back();
            } elseif ($collection['price'] === "") {
                Toastr::error('Please fill row:' . ($key + 2) . ' field: price ');
                return back();
            } elseif ($collection['category_id'] === "") {
                Toastr::error('Please fill row:' . ($key + 2) . ' field: category_id ');
                return back();
            }  elseif (!is_numeric($collection['stock'])) {
                Toastr::error('Total Stock of row ' . ($key + 2) . ' must be number');
                return back();
            } elseif ($collection['stock'] === "") {
                Toastr::error('Please fill row:' . ($key + 2) . ' field: total_stock ');
                return back();
            }



        }
        $data = [];
        // dd(auth()->guard('branch')->user()->id);
        foreach ($collections as $collection) {

            array_push($data, [
                'name' => $collection['name'],
                // 'pharmacy_id'=>auth()->guard('branch')->user()->id,
                'description' => $collection['description'],
                'composition' => $collection['composition'],
                'indication' => $collection['indication'],
                'dosage' => $collection['dosage'],
                'warnings' => $collection['warnings'],
                'image' => json_encode(['def.png']),
                'price' => $collection['price'],
                'status' => 1,
                'category_id' =>  $collection['category_id'],
                'sub_category' =>  $collection['sub_category'],

            ]);
        }
        DB::table('products')->insert($data);
        Toastr::success(count($data) . ' - Products imported successfully!');
        return back();
    }

    public function bulk_export_data()
    {
        $products = Product::get();
        $storage = [];
        foreach($products as $item){
            if (!isset($item['description'])) {
                $item['description'] = 'No description available';
            }

            if (!isset($item['capacity'])) {
                $item['capacity'] = 0;
            }

            $storage[] = [
                'name' => $item['name'],
                'description' => $item['description'],
                'price' => $item['price'],
                'dosage' => $item['dosage'],
                'warnings' => $item['warnings'],
                'indication' => $item['indication'],
                'composition' => $item['composition'],
                'status' => $item['status'],
                'category_id'=>$item['category_id'],
                'sub_category'=>$item['sub_category'],


            ];

        }
        return (new FastExcel($storage))->download('products.xlsx');
    }
}
