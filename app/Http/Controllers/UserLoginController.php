<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class UserLoginController extends Controller
{
    //
    public function index(Request $request)
    {
        if ($request->session()->exists('userId')) {
            echo 'Login successed!';
            $value = $request->session()->pull('userId');
            echo 'UserId: ' . $value;
        } else {
            if ($request->isMethod('post')) {
                $request->session()->put('userId', '1234');
                echo 'Login successed!';
            } else {
                return view('login');
            }
        }
    }
}
