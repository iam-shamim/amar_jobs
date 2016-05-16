<?php

namespace App\Http\Controllers;

use App\model\categories;
use Illuminate\Http\Request;

use App\Http\Requests;

class categoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $paginateValue=10;
        $data=categories::where('id','>=',1)->orderBy('sortInd','ASC')->paginate($paginateValue);
        $page = (isset($_GET['page']))? $_GET['page']:1;
        $sl=($page-1)*$paginateValue;
        return view('setup.categories_index',['data'=>$data,'sl'=>$sl]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(){
        return view('setup.categoriesCreate');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Requests\catRequest $request){
        $categories=new categories();
        $categories->categoryName=htmlspecialchars($request->categoryName);
        $categories->sortInd=$request->serial;
        $categories->save();
        return redirect(route('categories.index'));
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
        $data=categories::findOrFail($id);
        return view('setup.categoriesEdit',['data'=>$data]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Requests\catRequest $request, $id)
    {
        $categories=categories::findOrFail($id);
        $categories->categoryName=htmlspecialchars($request->categoryName);
        $categories->sortInd=$request->serial;
        $categories->save();
        return redirect(route('categories.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy($id){
        $data=categories::findOrFail($id);
        $data->delete();
    }
}
