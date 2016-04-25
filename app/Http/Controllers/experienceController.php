<?php

namespace App\Http\Controllers;

use App\model\experience;
use Illuminate\Http\Request;
use App\model\Profile;
use App\model\company;
use DB;
use Validator;
use App\Http\Requests;
use Session;

class experienceController extends Controller
{
    public function index(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        $profilesID=Session()->get('profilesID');
        //$education=DB::table('profile_experiences')->select(['companies.id as companiesID','companyName','city','district','postcode','address','phone','email','website','CONCAT("images/",logo) AS logo','profile_experiences.*'])->where('profileID',$profilesID)->leftJoin('companies','profile_experiences.companyID','=','companies.id')->get();
        $url=url('/img/company');
        $sql="SELECT companies.id as companieID,companyName,city,district,postcode,address,phone,email,website,CONCAT('{$url}/',logo) AS logo,profile_experiences.* FROM `profile_experiences` LEFT JOIN `companies` ON `profile_experiences`.`companyID`=`companies`.`id`  WHERE profile_experiences.profileID=$profilesID";
        $education=DB::select($sql);
        return view('experiences_index',['data'=>$data,'education'=>$education]);
    }
    public function add(){
        $userID=\Auth::user()->id;
        $data=Profile::where('userID',$userID)->first();
        $data->profilePic=($data->profilePic===NULL)? 'default.icon.png':$data->profilePic;
        return view('experiencesAdd',['data'=>$data]);

    }
    public function ajaxSearch(){
        $term=(isset($_GET['term']))?$_GET['term']:'techmasters';
        $page=(isset($_GET['page']))?$_GET['page']:1;
        $take=10;
        $skip=($page-1)*$take;

        $institute=company::where('companyName','LIKE','%'.$term.'%')->take($take)->skip($skip)->get(['id','companyName AS text','logo AS img','city','district','postcode','address','phone','email','website']);

        $found=false;
        $data=[];
        foreach($institute AS $key=>$value){
            $found=true;
            $idVal=
                [
                    'id'=>$value->id,
                    'companyName'=>$value->text,
                    'city'=>$value->city,
                    'district'=>$value->district,
                    'postcode'=>$value->postcode,
                    'address'=>$value->address,
                    'phone'=>$value->phone,
                    'email'=>$value->email,
                    'website'=>$value->website,
                    'logo'=>url('img/company/'.$value->img),
                ];
            $idValJson=json_encode($idVal);
            $data[]=[
                "id"=>$idValJson,
                'text'=>"{$value->text}",
                'city'=>"{$value->city},",
                'district'=>"{$value->district}",
                'website'=>"{$value->website}",
                'img'=>url('img/company/'.$value->img)
            ];
        }
        if(!$found){
            return json_encode([
                0=>[
                    "id"=>'0',
                    'text'=>'not found',
                    'city'=>" ",
                    'district'=>" ",
                    'website'=>" ",
                    'img'=>url('img/icon/404.gif')
                ]
            ]);
        }
        return json_encode($data);
    }

    public function store(Request $input){
        $searchCompany=$input->_searchCompany;
        if($searchCompany!=='null'){
            $validator=Validator::make($input->all(),[
                'jobTitle'=>'required',
                'jobSummary'=>'required',
                'startedOn'=>'required'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput($input->except(['companyName','city','district','postcode','phone','email','website','address']));
            }
            $companyID=$input->_searchCompany;
        }else{
            $validator=Validator::make($input->all(),[
                'companyName'=>'required',
                'city'=>'required',
                'district'=>'required',
                'address'=>'required',
                'jobTitle'=>'required',
                'jobSummary'=>'required',
                'startedOn'=>'required',
                'logo'=>'mimes:jpeg,bmp,png'
            ]);
            if($validator->fails()){
                return redirect()->back()->withErrors($validator)->withInput();
            }
            $company=new company();
            $company->companyName=$input->companyName;
            $company->city=$input->city;
            $company->district=$input->district;
            $company->postcode=$input->postcode;
            $company->address=$input->address;
            $company->phone=$input->phone;
            $company->email=$input->email;
            $company->website=$input->website;
            $img=$input->file('logo');
            if($img){
                $imgName=md5(str_random(30).time().'_'.$input->file('logo')->getClientOriginalName()).'.'.$input->file('logo')->getClientOriginalExtension();
                $input->file('logo')->move('img/company/',$imgName);
                $company->logo=$imgName;
            }
            $company->save();
            $companyID=$company->id;

        }
        $profilesID=$input->session()->get('profilesID');
        $data=new experience();
        $data->profileID=$profilesID;
        $data->companyID=$companyID;
        $data->startedOn=date('Y-m-d',strtotime($input->startedOn));
        $data->endedOn=date('Y-m-d',strtotime($input->endedOn));
        $data->jobSummary=$input->jobSummary;
        $data->jobTitle=$input->jobTitle;
        $data->save();
        return redirect(route('experience.index'));
    }
    public function destroy($id){
        $profileID=Session::get('profilesID');
        $data=experience::where('id',$id)->where('profileID',$profileID);
        $data->delete();
    }
}
