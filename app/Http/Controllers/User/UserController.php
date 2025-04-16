<?php

namespace App\Http\Controllers\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\Language;
use App\Models\User;

use DB;



class UserController extends Controller
{
  
     public function __construct() {

        $this->locales = Language::all();
        view()->share([
            'locales' => $this->locales,

        ]);
    }

    public function image_extensions(){
        return array('jpg','png','jpeg','gif','bmp');
    }

   


    public function edit(Request $request)
    {
        // dd($request->all());
        $id = auth()->id();
        $user = User::query()->findOrFail($id);


       $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $user->id,
            'mobile' => 'required|min:8|unique:users,mobile,' . $user->id,
            'logo' => 'nullable|file|mimes:jpeg,png,jpg|max:2048'
        ]);





        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

                $item = User::findOrFail($id);
                $item->mobile = $request->mobile;
                $item->email = $request->email;
                $item->name = $request->name;
                $item->notes = $request->notes;
                $item->created_by = $id;
               
                if($request->hasFile('logo') && $request->file("logo")!='')
                {
                    if ($request->file("logo")->isValid())
                    {
                        $destinationPath=public_path('uploads/user');

                        $extension=strtolower($request->file("logo")->getClientOriginalExtension());
                        $array= $this->image_extensions();
                        if(in_array($extension,$array))
                        {
                            $fileName=uniqid().'.'.$extension;
                            $request->file("logo")->move($destinationPath, $fileName);
                        }else{
                            return response()->json(['message'=> 'file:jpg,png,jpeg,gif,bmp,pdf', 'code'=>201 , 'status'=>false]);
                        }
                    }
                }
                if(isset($fileName)){$item->logo='uploads/user/'.$fileName;}


                $item->save();


                $message ="success opearation";
                return mainResponse(true, $message , $item, 200, 'items','');
       
        }
    }


     public function edit_password(Request $request)
    {
        // dd($request->all());
         $id = auth()->id();
        $user = User::query()->findOrFail($id);

       $validator = Validator::make($request->all(), [
            'password' => [
            'required',
            'string',
            'min:8', // الحد الأدنى 8 أحرف
            'regex:/[!@#$%^&*(),.?":{}|<>]/', // شرط وجود رمز
        ],
            'confirm_password' => 'required|min:8|same:password',
        ],[
                'password.regex' => 'Password must contain at least one special character.',
            ]);





        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

                $item = User::findOrFail($id);
                $item->password = bcrypt($request->password);
                $item->pwd = $request->password;

                $item->save();

                

                $message ="success opearation";
                return mainResponse(true, $message , $item, 200, 'items','');
       
        }
    }



    public function getAuth(){

        $id = auth('sanctum')->id();
        $items = User::query()->findOrFail($id);
        $message ="ٌreturn Item successfully";
        return mainResponse(true, $message , $items, 200, 'items','');

    }

    

}