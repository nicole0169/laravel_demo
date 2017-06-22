<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserFilesController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->isMethod('post')) {
            //dd($request->file('uploadfile'));
            print_r($request->input('userid'));
            dd($request->all());
        }
        return view('upload');
    }
}
