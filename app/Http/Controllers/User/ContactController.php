<?php

namespace App\Http\Controllers\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\Language;
use App\Models\User;
use App\Models\Contact;

use DB;



class ContactController extends Controller
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

   
 


    public function create(Request $request)
    {
        // dd($request->all());
        $id = auth('sanctum')->id();

        $validator = Validator::make($request->all(), [
            'mess' => 'required',
        ]);


        $user = User::where('id',$id)->first();



        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

 
                
                $item = New Contact;
                $item->user_id = $id;
                
                $item->name = $user->name;
                $item->email = $user->email;
                $item->mobile = $user->mobile;
                $item->message = $request->mess;

                $item->message = $request->mess;
                $item->save();

                $message = " Sent Successfully, Thank You and will be Response Soon" ;
                return mainResponse(true, $message , $item, 200, 'items','');

               

       
        }
    }





     public function create2(Request $request)
    {
        // dd($request->all());
        $id = auth('sanctum')->id();

        $validator = Validator::make($request->all(), [
            'message' => 'required',
            'name' => 'required',
            'email' => 'required',
        ]);






        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

 
                
                $item = New Contact;
                $item->name = $request->name;
                $item->email = $request->email;
                $item->mobile = $request->mobile;
                $item->orgnization = $request->orgnization;
                $item->message = $request->message;
                $item->save();

                $message = " Sent Successfully, Thank You and will be Response Soon" ;
                return mainResponse(true, $message , $item, 200, 'items','');

               

       
        }
    }




}