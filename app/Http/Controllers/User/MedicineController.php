<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Model\Product;
use Facade\FlareClient\Http\Response;
use Illuminate\Http\Request;

class MedicineController extends Controller
{
    public function categories()
    {
        try {
            //  dd(5);

            $categories = Category::all();
//
//            $data['code'] = 200;
//            $data['message'] = 'success';
//            $data['error'] = NULL;
//            $data['data'] = $categories;
//            return json_encode($data);

            return responseJson(1, 'success', $categories);
        } catch (\Exception $ex) {
            dd($ex);
        }
    }

    public function products()
    {
        $products = Product::search()->get();
        return responseJson(1, 'success', $products);

    }
}
