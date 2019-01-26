<?php

namespace App\Http\Controllers;

use App\Kitab;
use Illuminate\Http\Request;

class KitabController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('role:super')->except(['index','show']);
    }

    public function index()
    {
        $kitab = Kitab::paginate(8);
        return view('kitab/index')->with('kitab',$kitab);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kitab/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(['sekil'=>'mimes:jpeg,jpg,png | max:100000']);
        $kitab = new Kitab;
        $kitab->ad = $request->ad;
        $kitab->yazar = $request->yazar;
        $kitab->janr = $request->janr;
        $kitab->link = $request->link;
        $kitab->reytinq = $request->reytinq;
        $kitab->haqqinda = $request->haqqinda;
        if($request->sekil!=null)
        {
            $sekil =$request->sekil;
            $name = time().$sekil->getClientOriginalName();
            $sekil->move(public_path('images').'/kitablar',$name);
            $kitab->sekil=$name;
        }
        else{
            $kitab->sekil = 'noImage.jpg';
        }           

        $kitab->save();
        return redirect('/kitabxana');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Kitab  $kitab
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $kitab = Kitab::all()->find($request->id);
        return view('kitab/show')->with('kitab',$kitab);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Kitab  $kitab
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request)
    {
        $kitab = Kitab::all()->find($request->id);
        return view('kitab/edit')->with('kitab',$kitab);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Kitab  $kitab
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        $kitab = Kitab::all()->find($request->id);
        $kitab->ad = $request->ad;
        $kitab->yazar = $request->yazar;
        $kitab->janr = $request->janr;
        $kitab->link = $request->link;
        $kitab->reytinq = $request->reytinq;
        $kitab->haqqinda = $request->haqqinda;
        if(isset($request->sekil))
        {
            if($kitab->sekil!="noImage.jpg"){
                try{unlink(public_path().'/images/kitablar/'.$kitab->sekil);}catch(\Throwable $th){}
            }
            $sekil =$request->sekil;
            $name = time().$sekil->getClientOriginalName();
            $sekil->move(public_path('images').'/kitablar',$name);
            $kitab->sekil=$name;
            
        }
        $kitab->save();
        return redirect('/kitabxana');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Kitab  $kitab
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $kitab = Kitab::all()->find($request->id);
        $kitab->delete();
        if($kitab->sekil!='noImage.jpg'){
            try{unlink(public_path().'/images/kitablar/'.$kitab->sekil);}catch(\Throwable $th){}
    }
        return redirect('/kitabxana');
    }
}