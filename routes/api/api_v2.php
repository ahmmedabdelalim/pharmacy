<?php
//

use App\Http\Controllers\User\MedicineController;
use App\Http\Controllers\User\UserAuthController;
use Illuminate\Support\Facades\Route;

Route::get('/user/categories', [MedicineController::class,'categories']);
Route::get('/user/product', [MedicineController::class,'products']);

Route::group(['prefix' => 'auth'], function () {
    Route::post('signup', [UserAuthController::class,'registration']);
 Route::post('login',[UserAuthController::class,'login'] );


});
?>
