<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\Product;
use Illuminate\Http\Request;

class MedicineController extends Controller
{
    public function categories()
    {
        return "menna";
       return $categories = Category::all();
//        return $categories;
        return responseJson(1, "success", $categories);
    }

    public function products()
    {
        $products = Product::all();
        return responseJson(1, 'success', $products);
    }

}
