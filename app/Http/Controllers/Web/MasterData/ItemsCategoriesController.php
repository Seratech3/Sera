<?php

namespace App\Http\Controllers\Web\MasterData;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;
use App\Models\User;
use App\Models\Language;
use App\Models\ItemsCategories;
use App\Models\ItemsTypes;



class ItemsCategoriesController extends Controller
{
  
     public function __construct() {
        $this->middleware('auth', ['except' => ['login', 'register']]);

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
      
        $id = auth('admin')->id();

        $validator = Validator::make($request->all(), [
           
            'type' => 'required',
        ]);


        if($request->type == 'fqa'){
 
            $validator = Validator::make($request->all(), [
                'category_id' => 'required',
            ]);

        }


         if($request->type == 'coupon'){
 
            $validator = Validator::make($request->all(), [
                'coupon' => 'required',
                'download' => 'required',
            ]);

        }




        foreach ($this->locales as $locale) {
            $roles['name_' . $locale->lang] = 'required';
            $roles['description_' . $locale->lang] = 'required';
        }







        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

 
                
                $item = New ItemsCategories;
                $item->category_id = $request->category_id;
                $item->company_id = company_auth_id();
                $item->type_id = ItemsTypes::where('name',$request->type)->pluck('id')->first();
                $item->home = $request->home;
                $item->youtube_url = $request->youtube_url;
                $item->rate = $request->rate;
                $item->order = $request->order;
                $item->position = $request->position;
                $item->coupon = $request->coupon;
                $item->download = $request->download;

                $item->created_by = $id;
                
             
                foreach ($this->locales as $locale) {
                    $item->translateOrNew($locale->lang)->name = $request->get('name_' . $locale->lang);
                    $item->translateOrNew($locale->lang)->description = $request->get('description_' . $locale->lang);
                    $item->translateOrNew($locale->lang)->position = $request->get('position_' . $locale->lang);
                }


                   if($request->hasFile('logo') && $request->file("logo")!='')
                {
                    if ($request->file("logo")->isValid())
                    {
                        $destinationPath=public_path('uploads/customer');

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
                if(isset($fileName)){$item->logo='uploads/customer/'.$fileName;}



                $item->save();

                $message ="تمت العملية بنجاح";
                return mainResponse(true, $message , $item, 200, 'items','');

               

       
        }
    }



    public function edit(Request $request)
    {
      // dd($request->all());
        $id = auth('admin')->id();
        $item = ItemsCategories::query()->findOrFail($request->Item_id);


        $validator = Validator::make($request->all(), [
            'type' => 'required',
        ]);

        foreach ($this->locales as $locale) {
            $roles['name_' . $locale->lang] = 'required';
            $roles['description_' . $locale->lang] = 'required';
        }


        if($request->type == 'fqa'){
 
            $validator = Validator::make($request->all(), [
                'category_id' => 'required',
            ]);

        }


         if($request->type == 'coupon'){
 
            $validator = Validator::make($request->all(), [
                'coupon' => 'required',
                'download' => 'required',
            ]);

        }




        if($request->type == 'fqa'){
 
            $validator = Validator::make($request->all(), [
                'youtube_url' => 'required|url',
            ]);

        }




        if ($validator->fails()) {
            return mainResponse(false, '' , null, 203, 'items',$validator);
        }else{

 
                
                $item = ItemsCategories::findOrFail($request->Item_id);
                $item->category_id = $request->category_id;
                $item->type_id = ItemsTypes::where('name',$request->type)->pluck('id')->first();
                $item->created_by = $id;
                $item->home = $request->home;
                $item->youtube_url = $request->youtube_url;
                $item->rate = $request->rate;
                $item->order = $request->order;

                 $item->coupon = $request->coupon;
                $item->download = $request->download;


             
                foreach ($this->locales as $locale) {
                    $item->translateOrNew($locale->lang)->name = $request->get('name_' . $locale->lang);
                    $item->translateOrNew($locale->lang)->description = $request->get('description_' . $locale->lang);
                    $item->translateOrNew($locale->lang)->position = $request->get('position_' . $locale->lang);
                }


                 if($request->hasFile('logo') && $request->file("logo")!='')
                {
                    if ($request->file("logo")->isValid())
                    {
                        $destinationPath=public_path('uploads/customer');

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
                if(isset($fileName)){$item->logo='uploads/customer/'.$fileName;}





                $item->save();

                $message ="Doing successfully";
                return mainResponse(true, $message , $item, 200, 'items','');

               

       
        }
    }


    public function getAll(Request $request)
    {

         $id = auth('admin')->id();

            $items = ItemsCategories::with('type','category');


            if($request->has('search') && !empty($request->search)) {
                $items->where(function($query) use ($request) {
                    $query->whereTranslationLike('name','%'.$request->search.'%')
                          ->orWhereTranslationLike('description', '%' . $request->search . '%');
                });
            }


            if($request->has('type') && !empty($request->type)) {
                $items->whereHas('type', function($query) use ($request) {
                    $query->where('name',$request->type);
                });
            }



            if(isset($request->pagination) && $request->pagination == 1) {
                $items = $items->orderBy('id','DESC')->paginate(10); 
            } else {
                $items = $items->orderBy('id','DESC')->get();
            }

            $message = "success return";

            return mainResponse(true, $message, $items, 200, 'items', '');
    }



    public function getById(Request $request)
    {
        $items = ItemsCategories::with('type','category')->where('id',$request->ID)->first();
        $message ="success return";
        return mainResponse(true, $message , $items, 200, 'items',''); 
    }

    public function delete($id)
    {
        if(ItemsCategories::where('id',$id)->delete()){
            $message ="success return";
            return mainResponse(true, $message , '', 200, 'items','');
        }else{
            $message ="Error happens";
            return mainResponse(false, $message , '', 203, 'items','');
        }
        
    }



 
    function deleteAllItem(Request $request){

        $selectedItems = explode(',', request()->query('selectedItems'));
        $action = $request->action ;
        
        

        try {

            if($action == 'delete'){
            ItemsCategories::whereIn('id',$selectedItems)->delete();
            }elseif ($action == 'active') {
                ItemsCategories::whereIn('id',$selectedItems)->update(['status'=>'active']);
            }else{
                ItemsCategories::whereIn('id',$selectedItems)->update(['status'=>'not_active']);
            }

            $message ="success return";
            return mainResponse(true, $message , '', 200, 'items','');

 
        } catch (Exception $e) {
            $message ="Error happens";
            return mainResponse(false, $message , '', 203, 'items','');
            
        }



    }

    

}