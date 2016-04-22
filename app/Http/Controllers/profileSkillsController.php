<?php

namespace App\Http\Controllers;

use App\model\profileSkills;
use App\model\skills;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\model\Profile;
use DB;
use Validator;
class profileSkillsController extends Controller
{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;

        $mySkills=DB::table('profile_skills')
            ->select('profile_skills.id','skills.skillName','profile_skills.skillRange')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        return view('profileSkills_index',['data'=>$data,'mySkills'=>$mySkills,'skills'=>$skills]);
    }
    public function store(Request $input){
        $profilesID=$input->session()->get('profilesID');
        $validator=Validator::make($input->all(),[
            'skillName'=>'required|unique:profile_skills,skillID,profileID',
            'skillRange'=>'required|integer|between:1,100'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $profileSkills=new profileSkills();
        $profileSkills->profileID=$profilesID;
        $profileSkills->skillID=$input->skillName;
        $profileSkills->skillRange=$input->skillRange;
        $profileSkills->save();
        return redirect()->back();
    }
    public function edit($id){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $mySkill=profileSkills::findOrFail($id);
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        return view('profileSkillsEdit',['data'=>$data,'mySkill'=>$mySkill,'skills'=>$skills]);
    }
    public function update(Request $input,$id){
        $profilesID=$input->session()->get('profilesID');
        $validator=Validator::make($input->all(),[
            'skillName'=>'required',
            'skillRange'=>'required|integer|between:1,100'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $profileSkills=profileSkills::findOrFail($id);
        $profileSkills->profileID=$profilesID;
        $profileSkills->skillID=$input->skillName;
        $profileSkills->skillRange=$input->skillRange;
        $profileSkills->save();
        return redirect(route('profile.skills'));
    }
    public function destroy($id){
        $data=profileSkills::findOrFail($id);
        $data->delete();
    }
}
