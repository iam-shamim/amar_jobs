<?php

namespace App\Http\Controllers;

use App\model\skills;
use Illuminate\Http\Request;

use App\Http\Requests;

class skillsController extends Controller{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $paginateValue=10;
        $data=skills::where('id','>=',1)->orderBy('sortInd','ASC')->paginate($paginateValue);
        $page = (isset($_GET['page']))? $_GET['page']:1;
        $sl=($page-1)*$paginateValue;
        return view('setup.skills_index',['data'=>$data,'sl'=>$sl]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        return view('setup.skillsCreate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\skillsRequest $request){
        $skills=new skills();
        $skills->skillName=$request->skillName;
        $skills->sortInd=$request->serial;
        $skills->save();
        return redirect(route('skills.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        echo self::routeNamed();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=skills::findOrFail($id);
        return view('setup.skillsEdit',['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\skillsRequest $request, $id)
    {
        $skills=skills::find($id);;
        $skills->skillName=$request->skillName;
        $skills->sortInd=$request->serial;
        $skills->save();
        return redirect(route('skills.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id){
        $data=skills::findOrFail($id);
        $data->delete();
    }
}
