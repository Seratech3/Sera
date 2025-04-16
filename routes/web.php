<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;












// use Illuminate\Support\Facades\Mail;
// use App\Mail\WelcomeUserMail;

// Route::get('/test-mail', function () {
//     $user = [
//         'name' => 'Mohamed',
//         'email' => 'mohamed@example.com', // الإيميل هنا لا يهم، Mailtrap يلتقطه
//     ];

//     Mail::to($user['email'])->send(new WelcomeUserMail($user));

//     return '📧 Email sent (check Mailtrap)';
// });











Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => [
        'localeSessionRedirect',
        'localizationRedirect',
        'localeViewPath'
    ]
], function () {








    Route::get('/dashboard/{pathMatch?}', function () {
        return view('basic.dashboard'); // للوحة الإدارة
    })->where('pathMatch', '.*');

    // Route::get('/app/{pathMatch?}', function () {
    //     return view('basic.dashboard_user'); // لوحة المستخدم
    // })->where('pathMatch', '.*');

    Route::get('/{pathMatch?}', function () {
        return view('basic.landing'); // الصفحة العامة
    })->where('pathMatch', '^(?!dashboard|web|user|api).*');





   



        Route::group(['prefix' => 'web'], function () {
        
            Route::post('/login', [App\Http\Controllers\Web\AuthController::class, 'login']);
            Route::post('/register', [App\Http\Controllers\Web\AuthController::class, 'register']);
            Route::group(['prefix' => 'admin'], function () {
            Route::post('/login', [App\Http\Controllers\Web\AuthAdminController::class, 'login']);
        });




        Route::group(['prefix' => 'Settings'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\Setting\SettingController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\Setting\SettingController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\Setting\SettingController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\Setting\SettingController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\Setting\SettingController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\Setting\SettingController::class,'deleteAllItem']);
            
        });


        Route::group(['prefix' => 'Languages'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\LanguageController::class,'getAllItems']);
            Route::get('change', [App\Http\Controllers\Web\LanguageController::class,'changeItem']);
            Route::get('translations', [App\Http\Controllers\Web\LanguageController::class,'translations']);
          
        
        });


    });



    Route::group(['prefix' => 'user'], function () {

 

        Route::post('/check-text', [App\Http\Controllers\Web\OpenAIController::class, 'checkText']);
        Route::post('/rephrase-text', [App\Http\Controllers\Web\OpenAIController::class, 'rephraseText']);
        Route::post('/check-ats', [App\Http\Controllers\Web\OpenAIController::class, 'checkAts']);
        Route::post('/check-suggestions', [App\Http\Controllers\Web\OpenAIController::class, 'Suggestions']);


        Route::group(['prefix' => 'Settings'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\Setting\SettingController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\Setting\SettingController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\Setting\SettingController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\Setting\SettingController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\Setting\SettingController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\Setting\SettingController::class,'deleteAllItem']);
            
        });


         Route::group(['prefix' => 'Languages'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\LanguageController::class,'getAllItems']);
            Route::get('change', [App\Http\Controllers\Web\LanguageController::class,'changeItem']);
            Route::get('translations', [App\Http\Controllers\Web\LanguageController::class,'translations']);
          
        
        });


         Route::group(['prefix' => 'Payment'], function () {
            Route::post('/paid', [App\Http\Controllers\User\TelrPaymentController::class, 'initiatePayment']);
            Route::get('/payment-success', [App\Http\Controllers\User\TelrPaymentController::class, 'paymentSuccess']);
            Route::get('/payment-failure', [App\Http\Controllers\User\TelrPaymentController::class, 'paymentFailure']);
        });



    });


    




    Route::group(['prefix' => 'web', 'middleware' => ['auth:admin']], function () {
        


       

        Route::group(['prefix' => 'AdminAuth'], function () {

            Route::get('getAuth', [App\Http\Controllers\Web\UserManagement\AdminController::class,'getAuth']);
        
        });




        Route::group(['prefix' => 'Admins'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\UserManagement\AdminController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\UserManagement\AdminController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\UserManagement\AdminController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\UserManagement\AdminController::class,'edit']);
            Route::post('EditItemPassword', [App\Http\Controllers\Web\UserManagement\AdminController::class,'edit_password']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\UserManagement\AdminController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\UserManagement\AdminController::class,'deleteAllItem']);
        
        });


        



        Route::group(['prefix' => 'Users'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\UserManagement\UserController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\UserManagement\UserController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\UserManagement\UserController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\UserManagement\UserController::class,'edit']);
            Route::post('EditItemPassword', [App\Http\Controllers\Web\UserManagement\UserController::class,'edit_password']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\UserManagement\UserController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\UserManagement\UserController::class,'deleteAllItem']);
        
        });
       


        Route::group(['prefix' => 'Roles'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\UserManagement\RoleController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\UserManagement\RoleController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\UserManagement\RoleController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\UserManagement\RoleController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\UserManagement\RoleController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\UserManagement\RoleController::class,'deleteAllItem']);
            Route::Delete('getAllItemsPermission', [App\Http\Controllers\Web\UserManagement\RoleController::class,'deleteAllItem']);
        
        });



        Route::group(['prefix' => 'Permission'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\UserManagement\PermissionController::class,'deleteAllItem']);
        
        });



        Route::group(['prefix' => 'Pages'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\Setting\PageController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\Setting\PageController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\Setting\PageController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\Setting\PageController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\Setting\PageController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\Setting\PageController::class,'deleteAllItem']);
        
        });



        Route::group(['prefix' => 'Contacts'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\Setting\ContactController::class,'getAll']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\Setting\ContactController::class,'delete']);
        
        });


       


        Route::group(['prefix' => 'ItemsCategories'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\MasterData\ItemsCategoriesController::class,'deleteAllItem']);
        
        });


        Route::group(['prefix' => 'ResumeTemplate'], function () {

            Route::get('getAllItems', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'getAll']);
            Route::get('getById', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'getById']);
            Route::post('createItem', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'create']);
            Route::post('editItem', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'edit']);
            Route::Delete('deleteItem/{id}', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'delete']);
            Route::Delete('deleteAllItem', [App\Http\Controllers\Web\MasterData\ResumeTemplateController::class,'deleteAllItem']);
        
        });



       



    }); // End Prefix Web

    


    Route::group(['prefix' => 'user'], function () {
    
        Route::group(['prefix' => 'ItemsCategories'], function () {

            Route::get('getAllItems', [App\Http\Controllers\User\UserDataController::class,'getAll']);
        
        });



        Route::group(['prefix' => 'Contacts'], function () {

          
            Route::post('createItem', [App\Http\Controllers\User\ContactController::class,'create']);
            Route::post('createItem2', [App\Http\Controllers\User\ContactController::class,'create2']);
        
        });




    });



    
    Route::group(['prefix' => 'user', 'middleware' => ['auth:sanctum']], function () {
        

        Route::group(['prefix' => 'UserAuth'], function () {

            Route::get('getAuth', [App\Http\Controllers\User\UserController::class,'getAuth']);
        
        });



        Route::group(['prefix' => 'Users'], function () {

            Route::post('editItem', [App\Http\Controllers\User\UserController::class,'edit']);
            Route::post('editItemPassword', [App\Http\Controllers\User\UserController::class,'edit_password']);
        
        });



        

        


       

    }); // End Prefix User













}); //End Localizations








