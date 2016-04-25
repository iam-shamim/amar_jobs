<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\coverLetterRequest;
use App\model\Profile;
use DB;
use App\model\coverLetter;

class coverLetterController extends Controller{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=Session()->get('profilesID');
        $coverLetter=coverLetter::where('profileID',5)->first();


        if(isset($coverLetter->id)){
            $addOrEditText='Edit Cover Latter';
            $routeLink=route('coverLetter.edit',$coverLetter->id);
            $coverLetterTitle=$coverLetter->coverLetterTitle;
            $coverLetterText=$coverLetter->actualText;
        }else{
            $addOrEditText='Add Cover Latter';
            $routeLink=route('coverLetter.add');
            $coverLetterTitle=null;
            $coverLetterText=null;
        }
        return view('coverLetter_index',['data'=>$data,'addOrEditText'=>$addOrEditText,'routeLink'=>$routeLink,'coverLetterTitle'=>$coverLetterTitle,'coverLetterText'=>$coverLetterText]);
    }
    public function add(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=Session()->get('profilesID');
        return view('coverLetterAdd',['data'=>$data]);
    }
    public function store(coverLetterRequest $input){
        $profilesID=Session()->get('profilesID');
        $coverLetterTitle=$input->coverLetterTitle;
        $coverLetter=$input->coverLetter;
        $data=new coverLetter();
        $data->profileID=$profilesID;
        $data->coverLetterTitle=$input->coverLetterTitle;
        $data->actualText=$input->coverLetter;
        $data->save();
        return redirect(route('coverLetter.index'));
    }
    public function edit($id){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=Session()->get('profilesID');
        $coverLetter=coverLetter::findOrFail($id);
        return view('coverLetterEdit',['data'=>$data,'coverLetter'=>$coverLetter]);
    }
    public function update(coverLetterRequest $input,$id){
        $profilesID=Session()->get('profilesID');
        $coverLetterTitle=$input->coverLetterTitle;
        $coverLetter=$input->coverLetter;
        $data=coverLetter::where('id',$id)->where('profileID',$profilesID)->firstOrFail();
        $data->coverLetterTitle=$input->coverLetterTitle;
        $data->actualText=$input->coverLetter;
        $data->save();
        return redirect(route('coverLetter.index'));
    }


}
