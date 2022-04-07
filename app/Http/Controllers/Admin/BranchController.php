<?php

namespace App\Http\Controllers\Admin;

use App\CentralLogics\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Branch;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Rap2hpoutre\FastExcel\FastExcel;
use Illuminate\Support\Facades\DB;


class BranchController extends Controller
{
    public function index(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if($request->has('search'))
        {
            $key = explode(' ', $request['search']);
           $branches = Branch::where(function ($q) use ($key) {
                        foreach ($key as $value) {
                            $q->orWhere('name', 'like', "%{$value}%");
                        }
            })->orderBy('id', 'desc');
            $query_param = ['search' => $request['search']];
        }else{
           $branches = Branch::orderBy('id', 'desc');
        }
        $branches = $branches->paginate(Helpers::getPagination())->appends($query_param);
        return view('admin-views.branch.index', compact('branches','search'));
    }

    public function store(Request $request)
    {
         //dd($request->file('products_file'));
        $request->validate([
            'name' => 'required|unique:branches',
            'email' => 'required|unique:branches',
            'password' => 'required|min:5',
            //'products_file' => 'required',
        ], [
            'name.required' => 'Name is required!',
        ]);

        $branch = new Branch();
        $branch->name = $request->name;
        $branch->email = $request->email;
        $branch->longitude = $request->longitude;
        $branch->latitude = $request->latitude;
        $branch->coverage = $request->coverage ? $request->coverage : 0;
        $branch->address = $request->address;
        $branch->password = bcrypt($request->password);
        $branch->save();
        // dd($branch->id);

        /// save peoduct from excel

        // if(!$request->file('products_file'))
        // {
        //     try {
        //         $collections = (new FastExcel)->import($request->file('products_file.xlsx'));
        //     } catch (\Exception $exception) {
        //         dd($exception);
        //         Toastr::error('You have uploaded a wrong format file, please upload the right file.');
        //         return back();
        //     }

        //     foreach ($collections as $key => $collection) {
        //         if ($collection['name'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: name ');
        //             return back();
        //         } elseif ($collection['description'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: description ');
        //             return back();
        //         } elseif (!is_numeric($collection['price'])) {
        //             Toastr::error('Price of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif (!is_numeric($collection['price'])) {
        //             Toastr::error('Price of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif (!is_numeric($collection['tax'])) {
        //             Toastr::error('Tax of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif ($collection['price'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: price ');
        //             return back();
        //         } elseif ($collection['category_id'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: category_id ');
        //             return back();
        //         } elseif ($collection['sub_category_id'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: sub_category_id ');
        //             return back();
        //         } elseif (!is_numeric($collection['discount'])) {
        //             Toastr::error('Discount of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif ($collection['discount'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: discount ');
        //             return back();
        //         } elseif ($collection['discount_type'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: discount_type ');
        //             return back();
        //         } elseif ($collection['tax_type'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: tax_type ');
        //             return back();
        //         } elseif ($collection['unit'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: unit ');
        //             return back();
        //         } elseif (!is_numeric($collection['total_stock'])) {
        //             Toastr::error('Total Stock of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif ($collection['total_stock'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: total_stock ');
        //             return back();
        //         } elseif (!is_numeric($collection['capacity'])) {
        //             Toastr::error('Capacity of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif ($collection['capacity'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: capacity ');
        //             return back();
        //         } elseif (!is_numeric($collection['daily_needs'])) {
        //             Toastr::error('Daily Needs of row ' . ($key + 2) . ' must be number');
        //             return back();
        //         } elseif ($collection['daily_needs'] === "") {
        //             Toastr::error('Please fill row:' . ($key + 2) . ' field: daily_needs ');
        //             return back();
        //         }

        //         $product = [
        //             'discount_type' => $collection['discount_type'],
        //             'discount' => $collection['discount'],
        //         ];
        //         if ($collection['price'] <= Helpers::discount_calculate($product, $collection['price'])) {
        //             Toastr::error('Discount can not be more or equal to the price in row '. ($key + 2));
        //             return back();
        //         }
        //     }
        //     $data = [];
        //     foreach ($collections as $collection) {

        //         array_push($data, [
        //             'name' => $collection['name'],
        //             'pharmacy_id'=>$branch->id,
        //             'description' => $collection['description'],
        //             'image' => json_encode(['def.png']),
        //             'price' => $collection['price'],
        //             'variations' => json_encode([]),
        //             'tax' => $collection['tax'],
        //             'status' => 1,
        //             'attributes' => json_encode([]),
        //             'category_ids' => json_encode([['id' => $collection['category_id'], 'position' => 0], ['id' => $collection['sub_category_id'], 'position' => 1]]),
        //             'choice_options' => json_encode([]),
        //             'discount' => $collection['discount'],
        //             'discount_type' => $collection['discount_type'],
        //             'tax_type' => $collection['tax_type'],
        //             'unit' => $collection['unit'],
        //             'total_stock' => $collection['total_stock'],
        //             'capacity' => $collection['capacity'],
        //             'daily_needs' => $collection['daily_needs'],
        //         ]);
        //         DB::table('pharmacy_product')->insert($data);
        //         Toastr::success(count($data) . ' - Products imported successfully!');

        //     }
        // }

        // ENd


        Toastr::success('Branch added successfully!');
        return back();

    }

    public function edit($id)
    {
        $branch = Branch::find($id);
        return view('admin-views.branch.edit', compact('branch'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required'
        ], [
            'name.required' => 'Name is required!',
        ]);

        $branch = Branch::find($id);
        $branch->name = $request->name;
        $branch->email = $request->email;
        $branch->longitude = $request->longitude;
        $branch->latitude = $request->latitude;
        $branch->coverage = $request->coverage ? $request->coverage : 0;
        $branch->address = $request->address;
        if ($request['password'] != null) {
            $branch->password = bcrypt($request->password);
        }
        $branch->save();
        Toastr::success('Branch updated successfully!');
        return back();
    }

    public function delete(Request $request)
    {
        $branch = Branch::find($request->id);
        $branch->delete();
        Toastr::success('Branch removed!');
        return back();
    }
}
