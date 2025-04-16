<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use Illuminate\Support\Facades\Http;

class TelrPaymentController extends Controller
{
   public function initiatePayment(Request $request)
    {
        $payload = [
            "store_id" => env('TELR_STORE_ID'),
            "auth_key" => env('TELR_AUTH_KEY'),
            "tran_test" => env('TELR_MODE') == 'sandbox' ? 1 : 0,
            "tran_amount" => $request->amount, // القيمة القادمة من الـ Vue.js
            "tran_currency" => "AED",
            "tran_cartid" => uniqid(),
            "tran_desc" => "Vue.js Payment",
            "tran_return" => env('TELR_SUCCESS_URL'),
            "tran_cancel" => env('TELR_FAILURE_URL')
        ];

        $response = Http::withOptions(['verify' => false])->post("https://secure.telr.com/gateway/order.json", $payload);
        $responseData = $response->json();
        dd($responseData);

        if (isset($responseData['order']['url'])) {
            return response()->json([
                'status' => 'success',
                'payment_url' => $responseData['order']['url']
            ]);
        }
 
        return response()->json([
            'status' => 'error',
            'message' => 'Payment initiation failed.'
        ], 400);
    }

    public function paymentSuccess()
    {
        return response()->json(['status' => 'success', 'message' => 'Payment Successful']);
    }

    public function paymentFailure()
    {
        return response()->json(['status' => 'failed', 'message' => 'Payment Failed']);
    }
}
