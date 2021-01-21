<?php

namespace App\Http\Controllers\API;

use App\BasicSetting;
use App\Helpers\AppHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Response;
use Intervention\Image\Facades\Image;

class BasicSettingController extends Controller
{
    public function getBasicSetting()
    {
        return BasicSetting::first();
    }

    public function updateBasicSetting(Request $request)
    {
        $request->validate([
            'title' => 'required|max:191',
            'level' => 'required|numeric',
            'est' => 'required|max:30',
            'phone' => 'required|max:50',
            'email' => 'required|email|max:50',
            'copy_text' => 'required',
        ]);

        $basic = BasicSetting::first();
        $in = $request->all();
        $basic->update($in);

        AppHelper::changeEnv(['APP_NAME' => $basic->title]);
    }

    public function updateLogoFavicon(Request $request)
    {
        $request->validate([
            "logo" => "nullable|base64mimes:png|base64max:300",
            "favicon" => 'nullable|base64mimes:png|base64max:50'
        ]);

        if ($request->logo) {
            $name = 'logo.png';
            Image::make($request->logo)->resize(64, 64)->save(public_path('img/') . $name);
        }

        if ($request->favicon) {
            $name = 'favicon.png';
            Image::make($request->favicon)->resize(34, 34)->save(public_path('img/') . $name);
        }

        return Response::json('Successfully Done', 200);
    }

    function imageExt($photo)
    {
        return explode('/', substr($photo, 0, strpos($photo, ';')))[1];
    }
}
