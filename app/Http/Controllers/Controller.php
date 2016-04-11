<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public static function resourceName(){
        $namedRoute=\Route::currentRouteName();
        $namedRouteExp=explode('.',$namedRoute);
        end($namedRouteExp);
        $methodNameKey=key($namedRouteExp);
        unset($namedRouteExp[$methodNameKey]);
        return implode('.',$namedRouteExp);

    }
    public function deliverResponse($status,$status_message,$data){
        header("HTTP/1.1 $status $status_message");
        $response['status']=$status;
        $response['status_message']=$status_message;
        $response['data']=$data;
        echo  json_encode($response);
    }
}
