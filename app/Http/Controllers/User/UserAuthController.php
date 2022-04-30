<?php

namespace App\Http\Controllers\User;

use App\CentralLogics\Helpers;
use App\CentralLogics\SMS_module;
use App\Http\Controllers\Controller;
use App\Mail\EmailVerification;
use App\Model\BusinessSetting;
use App\Model\EmailVerifications;
use App\Model\PhoneVerification;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Brian2694\Toastr\Facades\Toastr;



class UserAuthController extends Controller
{
    //

    public function check_phone(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required|min:11|max:14|unique:users'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        if (BusinessSetting::where(['key' => 'phone_verification'])->first()->value) {
            $token = rand(1000, 9999);
            DB::table('phone_verifications')->insert([
                'phone' => $request['phone'],
                'token' => $token,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
            $response = SMS_module::send($request['phone'], $token);
            return response()->json([
                'message' => $response,
                'token' => 'active'
            ], 200);
        } else {
            return response()->json([
                'message' => 'Number is ready to register',
                'token' => 'inactive'
            ], 200);
        }
    }

    public function check_email(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|unique:users'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        if (BusinessSetting::where(['key' => 'email_verification'])->first()->value) {
            $token = rand(1000, 9999);
            DB::table('email_verifications')->insert([
                'email' => $request['email'],
                'token' => $token,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
            Mail::to($request['email'])->send(new EmailVerification($token));

            return response()->json([
                'message' => 'Email is ready to register',
                'token' => 'active'
            ], 200);
        } else {
            return response()->json([
                'message' => 'Email is ready to register',
                'token' => 'inactive'
            ], 200);
        }
    }

    public function verify_email(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $verify = EmailVerifications::where(['email' => $request['email'], 'token' => $request['token']])->first();

        if (isset($verify)) {
            $verify->delete();
            return response()->json([
                'message' => 'OTP verified!',
            ], 200);
        }

        return response()->json(['errors' => [
            ['code' => 'otp', 'message' => 'OTP is not found!']
        ]], 404);
    }

    public function verify_phone(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'phone' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }

        $verify = PhoneVerification::where(['phone' => $request['phone'], 'token' => $request['token']])->first();

        if (isset($verify)) {
            $verify->delete();
            return response()->json([
                'message' => 'OTP verified!',
            ], 200);
        }

        return response()->json(['errors' => [
            ['code' => 'token', 'message' => 'OTP is not found!']
        ]], 404);
    }



    public function registration(Request $request)
    {
        // dd(2);
        try

        {$validator = Validator::make($request->all(), [
            'f_name' => 'required',
            'l_name' => 'required',
            'email' => 'required|unique:users',
            'phone' => 'required|unique:users',
            'password' => 'required|min:6',
        ], [
            'f_name.required' => 'The first name field is required.',
            'l_name.required' => 'The last name field is required.',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        $temporary_token = Str::random(40);
        $user = User::create([
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'email' => $request->email,
            'phone' => $request->phone,
            'password' => bcrypt($request->password),
            'temporary_token' => $temporary_token,
        ]);

        // dd($user);
        //$phone_verification = Helpers::get_business_settings('phone_verification');
        //$email_verification = Helpers::get_business_settings('email_verification');
        // if ($phone_verification && !$user->is_phone_verified) {
        //     return response()->json(['temporary_token' => $temporary_token], 200);
        // }
        // if ($email_verification && !$user->is_email_verified) {
        //     return response()->json(['temporary_token' => $temporary_token], 200);
        // }

        $token = $user->createToken('RestaurantCustomerAuth')->accessToken;

        // dd($token);
        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']['f_name']    = $user->f_name;
        $data['data']['l_name']    =$user->l_name;
        $data['data']    = $token;
        return json_encode($data);
    }
    catch(\Exception $ex)
    {
        dd($ex);
    }

       // return response()->json(['token' => $token], 200);
 }

     public function login(Request $request)
        {

        if($request->has('email_or_phone'))
        {
            $user_id = $request['email_or_phone'];

            $validator = Validator::make($request->all(), [
                'email_or_phone' => 'required',
                'password' => 'required|min:6'
            ]);

        }else
        {
            $user_id = $request['email'];

            $validator = Validator::make($request->all(), [
                'email' => 'required',
                'password' => 'required|min:6'
            ]);
        }



        if ($validator->fails()) {
            return response()->json(['errors' => Helpers::error_processor($validator)], 403);
        }
        // dd(55);

        $user = User::where(['email' => $user_id])->orWhere('phone', $user_id)->first();

        if (isset($user)) {
            $user->temporary_token = Str::random(40);
            $user->save();
            $data = [

                'email' => $user->email,
                'password' => $request->password
            ];


            if (auth()->attempt($data)) {
                $token = auth()->user()->createToken('RestaurantCustomerAuth')->accessToken;

        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;
        $data['data']['id'] = auth()->user()->id;
        $data['data']['f_name']    = auth()->user()->f_name;
        $data['data']['l_name']    = auth()->user()->l_name;
        $data['data']['phone']    = auth()->user()->phone;
        $data['data']['token']    = $token;

        return json_encode($data);
            }
        }

        $errors = [];
        array_push($errors, ['code' => 'auth-001', 'message' => 'Invalid credential.']);
        return response()->json([
            'errors' => $errors
        ], 401);

     }

     public function settings_update(Request $request)
    {
        // dd(6);
        $request->validate([
            'f_name' => 'required',
            'l_name' => 'required',
            'email' => 'required',
        ], [
            'f_name.required' => 'First name is required!',
        ]);

        $user  = User::find(@$request->user_id);
        // dd($user);

        if (!$user)
        {
        $data['code']    = 404;
        $data['message'] = 'user not found';
        return json_encode($data);

        }
        else{
        if ($request->has('image')) {
            $image_name =Helpers::update('admin/', $user->image, 'png', $request->file('image'));
        } else {
            $image_name = $user['image'];
        }
            // dd($branch);
        $user->f_name = $request->f_name;
        $user->l_name = $request->l_name;
        $user->email = $request->email;
        $user->phone = @$request->phone;
        $user->image = @$image_name;
        $user->save();
        Toastr::success('Admin updated successfully!');

        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;

        return json_encode($data);
        }
    }


    public function settings_password_update(Request $request)
    {

        $user = User::find($request->user_id);

        if(!$user)
        {
            $data['code']    = 404;
            $data['message'] = 'user not found';
            return json_encode($data);
        }
        else
       {
            $user->password = bcrypt($request['password']);
        $user->save();
        Toastr::success('Admin password updated successfully!');

        $data['code']    = 200;
        $data['message'] = 'success';
        $data['error']   = NULL;

        return json_encode($data);
        }
    }


}
