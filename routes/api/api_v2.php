<?php
//

use App\Http\Controllers\User\MedicineController;
use App\Http\Controllers\User\UserAuthController;
use Illuminate\Support\Facades\Route;

//Route::get('/user/categories', [MedicineController::class,'categories']);
Route::get('/user/product', [MedicineController::class,'products']);

Route::group(['prefix' => 'auth'], function () {
    Route::post('signup', [UserAuthController::class,'registration']);
    Route::post('login',[UserAuthController::class,'login'] );
    Route::post('settings_update',[UserAuthController::class,'settings_update'] );
    Route::post('settings_password_update',[UserAuthController::class,'settings_password_update'] );


});

// get categories
Route::get('/user/categories', [MedicineController::class,'categories']);
Route::get('/user/product_by_cat', [MedicineController::class,'product_by_cat']);
Route::get('/user/search', [MedicineController::class,'search']);
Route::get('/user/product_detail', [MedicineController::class,'product_detail']);
Route::get('/user/closest_location', [MedicineController::class,'closest_location']);
?>
