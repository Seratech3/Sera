<?php

namespace App\Http\Controllers\User;

use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Models\Language;
use App\Models\User;
use App\Models\ItemsCategories;

use DB;



class UserDataController extends Controller
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

   



    public function getAll(Request $request)
    {


            $items = ItemsCategories::with('type','category','templates');


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

                if(isset($request->groupBy) && $request->groupBy == 'category_id') {
                    $items = $items->orderBy('id','DESC')->get()->groupBy('category_id');
                 }else{

                        if(isset($request->order) && $request->order == 1) {
                            $items = $items->orderBy('order')->get();
                        }else{
                            $items = $items->orderBy('id','DESC')->get();
                        }
                        
                    }
            }



             


            


            

            $message = "success return";

            return mainResponse(true, $message, $items, 200, 'items', '');
    }

    

}