<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Product;
use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;
use App\CentralLogics\Helpers;
use Illuminate\Support\Facades\DB;

class MedicineController extends Controller
{
//     public function categories()
//     {
//         try {
//             //  dd(5);

//             $categories = Category::all();
// //
// //            $data['code'] = 200;
// //            $data['message'] = 'success';
// //            $data['error'] = NULL;
// //            $data['data'] = $categories;
// //            return json_encode($data);

//             return responseJson(1, 'success', $categories);
//         } catch (\Exception $ex) {
//             dd($ex);
//         }
//     }

    function categories(Request $request)
    {
        $query_param = [];
        $search = $request['search'];
        if($request->has('search'))
        {
            $key = explode(' ', $request['search']);
            $categories=Category::where(['position'=>0])->where(function ($q) use ($key) {
                        foreach ($key as $value) {
                            $q->orWhere('name', 'like', "%{$value}%");
                        }
            });
            $query_param = ['search' => $request['search']];
        }else{
            $categories=Category::where(['position'=>0]);
        }
        $categories=$categories->latest()->paginate(Helpers::getPagination())->appends($query_param);
        //return view('admin-views.category.index',compact('categories','search'));
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $categories;
        return json_encode($data);
    }

    public function products()
    {
        $products = Product::search()->get();
        return responseJson(1, 'success', $products);

    }


    public function product_by_cat(Request $request)
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
            $query = Product::where('category_id',$request->category_id)->latest();
        }
        $products = $query->paginate(Helpers::getPagination())->appends($query_param);
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $products;
        return json_encode($data);
    }


    public function search(Request $request)
    {
        $key = explode(' ', $request['search']);
        $products = Product::where(function ($q) use ($key) {
            foreach ($key as $value) {
                $q->orWhere('name', 'like', "%{$value}%");
            }
        })->get();
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $products;
        return json_encode($data);
    }

    public function product_detail(Request $request)
    {
        // $product = Product::where('id' , $request->product_id)->get();
        $product = DB::select("
        SELECT products.id AS product_id ,
        products.name AS product_name,
        products.description AS product_desc,
        products.warnings AS product_warninig,
        products.dosage AS product_dosage ,
        products.indication AS product_indication,
        pharmacy_product.product_id AS pharmacy_product_id,
        branches.id AS branche_id ,
        branches.name AS branche_name,
        branches.phone AS branche_phone,

                ((( ACOS( SIN((  $request->startlat * PI() / 180)) * SIN(

                (branches.latitude::FLOAT * PI() / 180)) + COS(( $request->startlat * PI() / 180)) * COS(

                (branches.latitude::FLOAT * PI() / 180)) * COS( ( (  $request->startlng - branches.longitude::FLOAT ) * PI() / 180)  )  ) ) *

                180 / PI()) * 60 * 1.1515 * 1.609344) AS distance

                FROM products
                INNER JOIN pharmacy_product
                ON products.id = pharmacy_product.product_id

                INNER JOIN branches
                ON branches.id = pharmacy_product.pharmacy_id


                products.id = $request->product_id AND pharmacy_product.stock > 0 LIMIT 5


        ");
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $product;
        return json_encode($data);
    }

    /// get nearest location

    public function closest_location(Request $request)
    {


    try{
        // dd($request->startlat);
        // $request->longitude;
            $query = DB::select("SELECT
            * FROM ( SELECT name , id ,phone ,latitude,longitude,

            ((( ACOS( SIN((   $request->startlat * PI() / 180)) * SIN(

            (latitude::FLOAT * PI() / 180)) + COS((  $request->startlat * PI() / 180)) * COS(

            (latitude::FLOAT * PI() / 180)) * COS( ( (  $request->startlng - longitude::FLOAT ) * PI() / 180)  )  ) ) *

            180 / PI()) * 60 * 1.1515 * 1.609344) AS distance
            FROM branches ) branches WHERE distance <= 20 LIMIT 5 ");

        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $query;
        return json_encode($data);
    }

    catch(\Exception $ex)
    {
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']    = $ex;
        return json_encode($data);
    }





    }
}
