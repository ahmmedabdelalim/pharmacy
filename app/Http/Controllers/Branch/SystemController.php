<?php

namespace App\Http\Controllers\Branch;

use App\Http\Controllers\Controller;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use App\CentralLogics\Helpers;
use App\User;
use App\Model\Branch;

class SystemController extends Controller
{
    public function restaurant_data()
    {
        $new_order = DB::table('orders')->where(['branch_id' => auth('branch')->id(), 'checked' => 0])->count();
        return response()->json([
            'success' => 1,
            'data' => ['new_order' => $new_order]
        ]);
    }

    public function settings()
    {
        return view('branch-views.settings');
    }

    public function settings_update(Request $request)
    {
        $request->validate([
            'name' => 'required',

            'email' => 'required',

        ], [
            'name.required' => 'First name is required!',

        ]);

        $branch = Branch::find(auth('branch')->id());

        if ($request->has('image')) {
            $image_name =Helpers::update('admin/', $branch->image, 'png', $request->file('image'));
        } else {
            $image_name = $branch['image'];
        }
            // dd($branch);
        $branch->name = $request->name;

        $branch->email = $request->email;
        $branch->latitude = $request->latitude;
        $branch->longitude = $request->longitude;
        $branch->phone = $request->phone;
        $branch->image = $image_name;
        $branch->save();
        Toastr::success('Admin updated successfully!');
        return back();
    }

}
