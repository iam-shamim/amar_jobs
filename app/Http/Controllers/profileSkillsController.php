<?php

namespace App\Http\Controllers;

use App\model\profileSkills;
use App\model\skills;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\model\Profile;
use DB;
class profileSkillsController extends Controller
{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;

        $mySkills=DB::table('profile_skills')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');


        return view('profileSkills_index',['data'=>$data,'mySkills'=>$mySkills,'skills'=>$skills]);
    }
}
