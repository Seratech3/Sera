<?php

namespace App\Http\Controllers\Web;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use App\Http\Controllers\Controller;
use GuzzleHttp\Client;

  


class OpenAIController extends Controller
{
    // public function checkText(Request $request)
    // {
    //     $lang = app()->getLocale() == 'en' ? 'English' : 'Arabic';


    //     $response = Http::withOptions([
    //         'verify' => false, // تعطيل التحقق من SSL
    //     ])->withHeaders([
    //             'Authorization' => 'Bearer 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',
    //         ])->post('https://api.openai.com/v1/chat/completions', [
    //             'model' => 'gpt-3.5-turbo', // النموذج الجديد
    //             'messages' => [
    //                 ['role' => 'system', 'content' => 'You are a helpful assistant.'],
    //                 // تحديد اللغة بناءً على النص
    //                 ['role' => 'user', 'content' => 'Please check the grammar of the following text in '.$lang .': ' . $request->input('text')],
    //             ],
    //             'max_tokens' => 1000,
    //             'temperature' => 0.7,
    //         ]);

    //         return response()->json($response->json());



    // }




    // public function rephraseText(Request $request)
    // {
    //     $lang = app()->getLocale() == 'en' ? 'English' : 'Arabic';

    //     $response = Http::withOptions([
    //     'verify' => false, // تعطيل التحقق من SSL
    //     ])->withHeaders([
    //             'Authorization' => 'Bearer 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',
    //         ])->post('https://api.openai.com/v1/chat/completions', [
    //             'model' => 'gpt-3.5-turbo', // النموذج الجديد
    //             'messages' => [
    //                 ['role' => 'system', 'content' => 'You are a helpful assistant.'],
    //                 ['role' => 'user', 'content' => 'Please rephrase the following text in '.$lang .': ' . $request->input('text')],
    //             ],
    //             'max_tokens' => 1000,
    //             'temperature' => 0.7,
    //         ]);

    //         return response()->json($response->json());


    // }



    // public function checkAts(Request $request)
    // {
    //     $request->validate([
    //         'resume' => 'required|string',
    //         'job_description' => 'required|string'
    //     ]);

    //     $client = new Client();
    //     $apiKey = "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";

    //     $response = $client->post('https://api.openai.com/v1/chat/completions', [
    //         'headers' => [
    //             'Authorization' => "Bearer $apiKey",
    //             'Content-Type'  => 'application/json',
    //         ],
    //         'json' => [
    //             'model' => 'gpt-4', // استخدم GPT-4 إذا كان متاحًا
    //             'messages' => [
    //                 ['role' => 'system', 'content' => 'You are an AI that analyzes resumes based on ATS (Applicant Tracking System) standards.'],
    //                 ['role' => 'user', 'content' => "Analyze this resume based on ATS criteria and provide suggestions for improvement.\n\nResume:\n" . $request->resume . "\n\nJob Description:\n" . $request->job_description]
    //             ],
    //             'temperature' => 0.5,
    //             'max_tokens' => 700,
    //         ],
    //     ]);

    //     $data = json_decode($response->getBody(), true);
    //     return response()->json([
    //         'resume' => $request->resume,
    //         'job_description' => $request->job_description,
    //         'analysis' => $data['choices'][0]['message']['content'] ?? 'Error processing the request'
    //     ]);
    // }








    //Gemin function






    public function checkText(Request $request)
    {
        $request->validate([
            'text' => 'required|string'
        ]);

        $text = $request->input('text');

        $client = new Client();

        try {
            $response = $client->post('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key='. env('GEMINI_API_KEY') , [
                'json' => [
                    'contents' => [
                        [
                            'parts' => [
                                [
                                    'text' => 'قم بتدقيق النص التالي إملائياً: ورجع النص المدقق فقط بدون اي حرف اخر '.$text
                                ]
                            ]
                        ]
                    ]
                ],
                'headers' => [
                    'Authorization' => 'Bearer ' . env('GEMINI_API_KEY')
                ],
                'verify' => false 
            ]);

            $data = json_decode($response->getBody()->getContents(), true);

            $correctedText = $data['candidates'][0]['content']['parts'][0]['text'] ?? 'خطأ في التصحيح';


            $correctedText = trim($correctedText); 

            return response()->json([
                'original_text' => $text,
                'corrected_text' => $correctedText
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'error' => 'حدث خطأ أثناء الاتصال بـ API: ' . $e->getMessage()
            ], 500);
        }
    }




    public function rephraseText(Request $request)
    {
        $request->validate([
            'text' => 'required|string'
        ]);

        $text = $request->input('text');

        $client = new Client();

        try {
            $response = $client->post('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyCMmdLTjFG3aESK8rExqxtEyCnh_Q1sbUY', [
                'json' => [
                    'contents' => [
                        [
                            'parts' => [
                                [
                                    'text' => 'قم باعادة صياغة النص التالي حسب لغة النص القادمة اذا كانت عربي بالعربي اذا كانت انجليزي بالانجليزي : ورجع النص المصاغ فقط بدون اي حرف اخر '.$text
                                ]
                            ]
                        ]
                    ]
                ],
                'headers' => [
                    'Authorization' => 'Bearer ' . env('GEMINI_API_KEY')
                ],
                'verify' => false 
            ]);

            $data = json_decode($response->getBody()->getContents(), true);

            $correctedText = $data['candidates'][0]['content']['parts'][0]['text'] ?? 'خطأ في التصحيح';


            $correctedText = trim($correctedText); 

            return response()->json([
                'original_text' => $text,
                'corrected_text' => $correctedText
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'error' => 'حدث خطأ أثناء الاتصال بـ API: ' . $e->getMessage()
            ], 500);
        }
    }



    public function checkAts(Request $request)
    {
        $request->validate([
            'text' => 'required|string'
        ]);

        $text = $request->input('text');

        $client = new Client();


        $text2 = "راجع السيرة الذاتية التالية وقيمها بناءً على متطلبات ATS. أريد منك أن ترجع لي مصفوفة تحتوي على العنصر الأول وهو نسبة قوة السيرة الذاتية (كنسبة مئوية)، يليها مجموعة من المصفوفات الفرعية. كل مصفوفة فرعية يجب أن تحتوي على اسم القسم في السيرة الذاتية كمفتاح 'key' مع مصفوفة من المشكلات المرتبطة بهذا القسم كقيمة 'value'. يجب أن يكون التنسيق على شكل مصفوفات فقط بدون أي نصوص إضافية اذا ارسلت اليك باللغة العربية رجعلي باللغة الربية واذا بالانجليزية ارجعلي بالانجليزية.

            البيانات ستكون على النحو التالي:
            [
                85,
                [
                    {
                        'الملخص الشخصي': [
                            'طويل جداً (يفضل أن يكون أقصر وأكثر تركيزاً على الكلمات المفتاحية)',
                            'يمكن تحسين استخدام الكلمات المفتاحية المتعلقة بمتطلبات الوظيفة المستهدفة'
                        ]
                    },
                    {
                        'المهارات الأساسية': [
                            'يجب تصنيف المهارات إلى فئات مثل Back-end و Front-end',
                            'يجب توضيح مستوى الخبرة في كل مهارة'
                        ]
                    },
                    {
                        'الخبرات العملية': [
                            'يجب توضيح حجم الفريق الذي قاده أو عمل معه',
                            'يجب إضافة مقاييس قابلة للقياس (أرقام، نسب مئوية) لإبراز الإنجازات'
                        ]
                    },
                    {
                        'الشهادات': [
                            'يفضل ذكر تاريخ الحصول على الشهادات',
                            'ممتاز وجود الشهادات'
                        ]
                    }
                ]
            ]";






        try {
            $response = $client->post('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyCMmdLTjFG3aESK8rExqxtEyCnh_Q1sbUY', [
                'json' => [
                    'contents' => [
                        [
                            'parts' => [
                                ['text' => $text2.$text

                                ]
                            ]
                        ]
                    ]
                ],
                'headers' => [
                    'Authorization' => 'Bearer ' . env('GEMINI_API_KEY')
                ],
                'verify' => false 
            ]);

            $data = json_decode($response->getBody()->getContents(), true);

            $correctedText = $data['candidates'][0]['content']['parts'][0]['text'] ?? 'خطأ في التصحيح';


            $correctedText = trim($correctedText);


            $cleanedText = str_replace('```json', '', $correctedText);
            $cleanedText = str_replace('```', '', $cleanedText);
            

          
            return response()->json([
                'original_text' => $text,
                'corrected_text' => json_decode($cleanedText)
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'error' => 'حدث خطأ أثناء الاتصال بـ API: ' . $e->getMessage()
            ], 500);
        }
    }






    public function Suggestions(Request $request)
    {
        $request->validate([
            'text' => 'required|string'
        ]);


        $client = new Client();

        $instruction = 'أريد منك أن ترجع لي 10 اقتراحات بصيغة مصفوفة فقط، بدون أي نصوص إضافية. سوف أرسل لك اسم الوظيفة (Job Title) بالإضافة إلى القسم (مثل: مهارات، خبرات، نبذة عني). 
        إذا أرسلت لك النص باللغة العربية، أرجع لي النتيجة بالعربية، وإذا بالإنجليزية، أرجع بالإنجليزية.
     مثل هذه المصفوفة بدون زيادات وكلام وشرح اريد فقط النقاط
   كل عنصر في المصفوفة يجب أن يكون اقتراحًا مرتبطًا بالمسمى الوظيفي والقسم.
       ارجوك اريدها نقاط بسيكة داخل الاري بدون زيادة او شرح بالكلام 
       ولا اريد تقسم بالمهارات ولا تعداد اريدها مصفوفة فيها 10 قيم
        [
            "html",
            "css",
            "javascript",
            "git",
            "react",
            "node.js"
          ]

        ';

        $userPrompt = $request->text;




        try {
            $response = $client->post('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=AIzaSyCMmdLTjFG3aESK8rExqxtEyCnh_Q1sbUY', [
                'json' => [
                    'contents' => [
                        [
                            'parts' => [
                                [
                                    'text' => $instruction,
                                    'text' => $userPrompt

                                ]
                            ]
                        ]
                    ]
                ],
                'headers' => [
                    'Authorization' => 'Bearer ' . env('GEMINI_API_KEY')
                ],
                'verify' => false 
            ]);

            // dd($response->getBody()->getContents());


            $data = json_decode($response->getBody()->getContents(), true);

            $correctedText = $data['candidates'][0]['content']['parts'][0]['text'] ?? 'No content';


            


            $correctedText = trim($correctedText);

            


            $cleanedText = str_replace('```json', '', $correctedText);
            $cleanedText = str_replace('```', '', $cleanedText);
            

          
            return response()->json([
                'original_text' => $userPrompt,
                'corrected_text' => json_decode($cleanedText)
            ], 200);

        } catch (\Exception $e) {
            return response()->json([
                'error' => 'حدث خطأ أثناء الاتصال بـ API: ' . $e->getMessage()
            ], 500);
        }
    }









}
 