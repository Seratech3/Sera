<?php

namespace App\Http\Controllers\Web\Setting;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use App\Models\Language;
use App\Models\Setting;



class SettingController extends Controller
{
   
     public function __construct() {
        // $this->middleware('auth', ['except' => ['login', 'register']]);

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
        $locales = Language::all()->pluck('lang');
        $roles = [
            'logo' => 'nullable|file|mimes:jpeg,png,jpg,webp|max:2048',
            'email' => 'required|email',
            'mobile' => 'required',
            'instagram' => 'required',
            'twitter' => 'required',
            'linked_in' => 'required',
        ];
       
        foreach ($locales as $locale) {
            $roles['name_' . $locale] = 'required';
            $roles['key_words_' . $locale] = 'required';
            $roles['description_' . $locale] = 'required';
        }


        $this->validate($request, $roles);


        $setting = Setting::query()->findOrFail(1);
        $setting->url = trim($request->get('url'));
        $setting->email = trim($request->get('email'));
        $setting->mobile = trim($request->get('mobile'));
        $setting->facebook = trim($request->get('facebook'));
        $setting->twitter = trim($request->get('twitter'));
        $setting->google_plus = trim($request->get('google_plus'));
        $setting->linked_in = trim($request->get('linked_in'));
        $setting->instagram = trim($request->get('instagram'));
        $setting->vedio = trim($request->get('vedio'));




         if($request->file("logo")&&$request->file("logo")!= '' )
        {
            if ($request->file("logo")->isValid())
            {
                $destinationPath=public_path('uploads/settings');

                $extension=strtolower($request->file("logo")->getClientOriginalExtension());
                //dd($extension);
              
                    $fileName_logo=uniqid().'.'.$extension;
                    $request->file("logo")->move($destinationPath, $fileName_logo);
                
            }
        }




        foreach ($locales as $locale) {
            $setting->translate($locale)->name = trim(ucwords($request->get('name_' . $locale)));
            $setting->translate($locale)->key_words = trim(ucwords($request->get('key_words_' . $locale)));
            $setting->translate($locale)->description = ucwords($request->get('description_' . $locale));
        }
        if(isset($fileName_logo)){$setting->logo= $fileName_logo;}
        $setting->save(); 

        $message = __('common.success');
        return mainResponse(true, $message, $setting, 200, 'items', '');    

    }


 



    public function getById(Request $request)
    {
        $items = Setting::query()->first();
        $message ="success return";
        return mainResponse(true, $message , $items, 200, 'items',''); 
    }


    

}