<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class jobsController extends Controller{
    public function index(){
        $currentUserData=session('profilesData');
        return view('jobs_index',['data'=>$currentUserData]);
    }
    public function create(){
        $userID=\Auth::user()->id;
        $employerID=DB::table('employers')->where('userID',$userID)->count();
        if(!$employerID){
            return redirect(route('company.create'));
        }
        $category=DB::table('categories')->orderBy('sortInd','asc')->lists('categoryName','id');
        $currentUserData=session('profilesData');
        return view('jobsCreate',['data'=>$currentUserData,'category'=>$category]);
    }
}
