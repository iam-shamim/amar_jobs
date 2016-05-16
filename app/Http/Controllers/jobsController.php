<?php

namespace App\Http\Controllers;

use App\model\job;
use Illuminate\Http\Request;

use App\Http\Requests;
use DB;
use Validator;

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
    public function edit($id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobsSelect=job::where('id',$id)->where('employerID',$employer->id)->firstOrFail();
        $category=DB::table('categories')->orderBy('sortInd','asc')->lists('categoryName','id');
        $currentUserData=session('profilesData');
        return view('jobsEdit',['data'=>$currentUserData,'category'=>$category,'jobData'=>$jobsSelect]);
    }
    public function store(Requests\jobsRequest $input){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobs=new job();
        $jobs->employerID=$employer->id;
        $jobs->jobTitle=htmlspecialchars($input->jobTitle);
        $jobs->jobSummary=$input->jobSummary;
        $jobs->jobDescription=$input->jobDescription;
        $jobs->jobType=$input->jobType;
        $jobs->jobLocation=htmlspecialchars($input->jobLocation);
        $jobs->applicationEndDate=date('Y-m-d',strtotime($input->applicationEndDate));
        $jobs->salary=htmlspecialchars($input->salary);
        $jobs->jobCategory=$input->jobCategory;
        $jobs->applicationInstruction=$input->applicationInstruction;
        $jobs->numberOfPosition=$input->numberOfPosition;
        $jobs->minimumExperience=htmlspecialchars($input->minimumExperience);
        $jobs->minimumAge=$input->minimumAge;
        $jobs->others=$input->others;
        $jobs->save();
        $lastID=$jobs->id;
        return redirect(route('jobs.edit',$lastID));
    }
    public function update(Requests\jobsRequest $input,$id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        $jobs=job::where('id',$id)->where('employerID',$employer->id)->firstOrFail();
        $jobs->jobTitle=htmlspecialchars($input->jobTitle);
        $jobs->jobSummary=$input->jobSummary;
        $jobs->jobDescription=$input->jobDescription;
        $jobs->jobType=$input->jobType;
        $jobs->jobLocation=htmlspecialchars($input->jobLocation);
        $jobs->applicationEndDate=date('Y-m-d',strtotime($input->applicationEndDate));
        $jobs->salary=htmlspecialchars($input->salary);
        $jobs->jobCategory=$input->jobCategory;
        $jobs->applicationInstruction=$input->applicationInstruction;
        $jobs->numberOfPosition=$input->numberOfPosition;
        $jobs->minimumExperience=htmlspecialchars($input->minimumExperience);
        $jobs->minimumAge=$input->minimumAge;
        $jobs->others=$input->others;
        $jobs->save();
        return redirect()->back();
    }
    public function view($id){
        //SELECT `jobs`.*,`companies`.* FROM `jobs` LEFT JOIN `employers` ON `jobs`.`employerID`=employers.id LEFT JOIN `companies` ON `employers`.`companyID`=companies.id
        $job=DB::table('jobs')->select(['jobs.*','companies.*','employers.*','jobs.created_at AS jobsPosted','companies.id AS companiesID','employers.id AS employersID'])->where('jobs.id',$id)
            ->leftJoin('employers','jobs.employerID','=','employers.id')
            ->leftJoin('companies','employers.companyID','=','companies.id')
            ->first();
        if(!$job){
            return view('job404');
        }
        return view('jobsView',['job'=>$job,'id'=>$id]);
    }
    public function destroy($id){
        $userID=\Auth::user()->id;
        $employer=DB::table('employers')->where('userID',$userID)->first();
        if(!$employer){
            return redirect(route('company.create'));
        }
        job::where('id',$id)->where('employerID',$employer->id)->delete();
        return redirect(route('jobs.index'));
    }
    public function featured($id){
        $job=job::findOrFail($id);
        $job->featuredJob=1;
        $job->save();
        return redirect()->back();
    }
    public function undeclared($id){
        $job=job::findOrFail($id);
        $job->featuredJob=null;
        $job->save();
        return redirect()->back();
    }
}
