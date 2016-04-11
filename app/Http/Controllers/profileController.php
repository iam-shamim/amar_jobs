<?php

namespace App\Http\Controllers;

use App\model\Profile;
use Illuminate\Http\Request;
use App\Http\Requests;
use Validator;

class profileController extends Controller
{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $data->genderMale=NULL;
        $data->genderFemale=NULL;
        $data->genderOthers=NULL;
        if($data->gender==='M'){
            $data->genderMale='checked';
        }else if($data->gender==='F'){
            $data->genderFemale='checked';
        }else{
            $data->genderOthers='checked';
        }
        return view('profile',['data'=>$data]);
    }
    public function update(Request $input){
        $validator=Validator::make($input->all(),[
            'firstName'=>'required',
            'email'=>'required',
            'gender'=>'required',
            'profilePic' => 'mimes:jpeg,bmp,png'
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator);
        }
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->email=$input->email;
        $data->firstName=$input->firstName;
        $data->lastName=$input->lastName;
        $data->middleName=$input->middleName;
        $data->phone=$input->phone;
        $data->DOB=date('Y/m/d',strtotime($input->birthDay));
        $data->gender=$input->gender;
        $img=$input->file('profilePic');
        if($img){
            $imgName=md5(str_random(30).$userID.time().'_'.$input->file('profilePic')->getClientOriginalName()).'.'.$input->file('profilePic')->getClientOriginalExtension();
            $input->file('profilePic')->move('img/people/',$imgName);
            if(file_exists('img/people/'.$data->profilePic) AND !empty($data->profilePic)){
                unlink('img/people/'.$data->profilePic);
            }
            $data->profilePic=$imgName;
        }

        $data->summary=$input->summary;
        $data->update();
        return redirect()->back();

    }
}
