<?php

namespace App\Http\Controllers;

use App\model\education;
use App\model\institute;
use Illuminate\Http\Request;
use App\model\Profile;
use DB;
use App\Http\Requests;
use Validator;
use Session;

class educationController extends Controller{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=Session()->get('profilesID');
        $education=DB::table('profile_education')->select(['institutes.id as institutesID','instituteName','city','district','postcode','address','phone','email','website','logo','instituteCode','profile_education.*'])->where('profileID',$profilesID)->leftJoin('institutes','profile_education.institutionID','=','institutes.id')->get();
        return view('education_index',['data'=>$data,'education'=>$education]);
    }
    public function add(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;

        $mySkills=DB::table('profile_skills')
            ->select('profile_skills.id','skills.skillName','profile_skills.skillRange')
            ->leftJoin('skills','profile_skills.skillID','=','skills.id')
            ->get();
        $skills=DB::table('skills')->orderBy('sortInd','asc')->lists('skillName','id');
        $degrees=DB::table('degrees')->lists('degreeName','id');
        return view('educationAdd',['data'=>$data,'degrees'=>$degrees]);
    }
    public function store(Request $input){
        $searchInstitute=$input->_searchInstitute;
        if($searchInstitute!=='null'){
            $validator=Validator::make($input->all(),[
                'subject'=>'required',
                'startedOn'=>'required'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput($input->except(['instituteName','city','district','postcode','phone','email','instituteCode','website','address']));
            }
            $instituteID=$input->_searchInstitute;
        }else{
            $validator=Validator::make($input->all(),[
                'instituteName'=>'required',
                'city'=>'required',
                'district'=>'required',
                'instituteCode'=>'required|unique:institutes,instituteCode',
                'address'=>'required',
                'subject'=>'required',
                'startedOn'=>'required',
                'instituteImage'=>'mimes:jpeg,bmp,png'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput();
            }
            $institute=new institute();
            $institute->instituteName=$input->instituteName;
            $institute->city=$input->city;
            $institute->district=$input->district;
            $institute->postcode=$input->postcode;
            $institute->address=$input->address;
            $institute->phone=$input->phone;
            $institute->email=$input->email;
            $institute->website=$input->website;
            $institute->instituteCode=$input->instituteCode;
            $img=$input->file('instituteImage');
            if($img){
                $imgName=md5(str_random(30).time().'_'.$input->file('instituteImage')->getClientOriginalName()).'.'.$input->file('instituteImage')->getClientOriginalExtension();
                $input->file('instituteImage')->move('img/institutes/',$imgName);
                $institute->logo=$imgName;
            }
            $institute->save();
            $instituteID=$institute->id;

        }
        $profilesID=$input->session()->get('profilesID');
        $data=new education();
        $data->profileID=$profilesID;
        $data->institutionID=$instituteID;
        $data->degreeID=$input->degree;
        $data->subjectName=$input->subject;
        $data->startedOn=date('Y-m-d',strtotime($input->startedOn));
        $data->endedOn=date('Y-m-d',strtotime($input->endedOn));
        $data->save();
        return redirect(route('education.index'));

    }
    public function ajaxSearch(){
        $term=(isset($_GET['term']))?$_GET['term']:39;
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $take=10;
        $skip=($page-1)*$take;
        if($termInt=(int) $term !==0){
            $institute=institute::where('instituteCode','LIKE','%'.$term.'%')->take($take)->skip($skip)->get(['id','instituteName AS text','logo AS img','city','district','postcode','address','phone','email','website','instituteCode']);
        }else{
            $institute=institute::where('instituteName','LIKE','%'.$term.'%')->take($take)->skip($skip)->get(['id','instituteName AS text','logo AS img','city','district','postcode','address','phone','email','website','instituteCode']);
        }
        $found=false;
        $data=[];
        foreach($institute AS $key=>$value){
            $found=true;
            $idVal=
                [
                    'id'=>$value->id,
                    'instituteName'=>$value->text,
                    'city'=>$value->city,
                    'district'=>$value->district,
                    'postcode'=>$value->postcode,
                    'address'=>$value->address,
                    'phone'=>$value->phone,
                    'email'=>$value->email,
                    'website'=>$value->website,
                    'instituteCode'=>$value->instituteCode,
                    'logo'=>url('img/institutes/'.$value->img),
                ];
            $idValJson=json_encode($idVal);
            $data[]=[
                "id"=>$idValJson,
                'text'=>"{$value->text}",
                'img'=>url('img/institutes/'.$value->img)
            ];
        }
        if(!$found){
            return json_encode([
                0=>[
                    "id"=>'0',
                    'text'=>'not found',
                    'img'=>url('img/icon/404.gif')
                ]
            ]);
        }
        return json_encode($data);

    }
}
