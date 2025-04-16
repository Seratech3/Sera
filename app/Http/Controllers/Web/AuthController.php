<?php

namespace App\Http\Controllers\Web;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

use App\Mail\WelcomeUserMail;
use Illuminate\Support\Facades\Mail;

 

class AuthController extends Controller
{
  

    public function image_extensions(){
        return array('jpg','png','jpeg','gif','bmp','pdf');
    }

    public function pdf_extensions(){
        return array('pdf');
    }

    public function login(Request $request)
    {
//         $user = [
//             'name' => $request->email,
//             'email' => $request->email,
//         ];


//          Mail::to($user['email'])->send(new WelcomeUserMail($user));


// dd('sss');
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }

        $email = $request->email;
        $credentials = request(['email', 'password']);

        if($token = auth()->attempt($credentials))
        {
            $user = auth()->user();
            $user['token'] = $user->createToken('auth_token')->plainTextToken;
            $message = 'Success Login';


            return mainResponse(true, $message , $user , 200 , 'items','');

            
        } else {
            $EmailData = User::query()->where(['email' => $email])->first();
            if ($EmailData != '') {
                $message = (app()->getLocale() == 'ar') ? 'يرجي التاكد من كلمة المرور المدخل' : 'The Password Wrong';
                return mainResponse(false, $message, null, 203, 'items','');
            } else {
                $message =  (app()->getLocale() == 'ar') ? 'يرجي التاكد من   البريد الالكتروني  المدخل' : 'The Email Not  Found';

                return mainResponse(false, $message, null, 203, 'items','');
            }
        }
    }


    public function register(Request $request)
    {
        // dd($request->all());
        $validator = Validator::make($request->all(), [

            'terms'=>'required',
            'name'=>'required',
            'email'=>'required|email|unique:users',
            'mobile' => 'required|min:10|unique:users',
            'password' => 'required|min:8',
            'confirmPassword' => 'required|min:8|same:password',
           
        ]);
        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{
                $confirmation_code = 1111;

                $newUser = new User();
                $newUser->name = $request->name;
                $newUser->email = $request->email;
                $newUser->password = bcrypt($request->password);
                $newUser->pwd = $request->password;
                $newUser->mobile = $request->mobile;
                $newUser->verification = 0 ;
                $newUser->code = $confirmation_code;
                $newUser->status = 'active';

                $newUser->save();

                $email = $request->email;
                $credentials = request(['email', 'password']);
                return $this->login($request);
         }
    }


  
    public function user(Request $request)
    {
        $message = 'return data success';
        return mainResponse(true, $message , auth('api')->user(), 200 , 'items','');
    }

   
    public function logout(Request $request)
    {
        $user = $request->user();
        
        if ($user->tokens()->delete()) {
        $message = 'logged out successfully';
            return mainResponse(true, $message , null, 200 , 'items','');
        } else {
        $message = 'logged out successfully';
            return mainResponse(true, $message , null, 200 , 'items','');
        }
    }

  
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

   
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }



    protected function createNewToken($token){
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'user' => auth()->user()
        ]);
    }





}




   