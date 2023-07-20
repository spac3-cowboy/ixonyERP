<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\StockInBundle;
use App\Models\StockInItem;
use App\Models\User;
use Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{

    public function loginPage()
    {
        return view('pages.login');
    }

    function login(Request $req)
    {
        $login = User::where('email', $req->email)->first();
        if ($login) {
            return redirect('/dashboard');
        }
    }

    public function customLogin(Request $req)
    {
        $req->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        $credentials = $req->only('email', 'password');
        if (Auth::attempt($credentials)) {
            return redirect()->route('dashboard')
                ->withSuccess('Signed in');
        }

        return redirect()->back()->withError('Login details are not valid');
    }

    public function createUser(Request $req)
    {
        $newUser = new User();

        $newUser->name = $req->name;
        $newUser->email = $req->email;
        $newUser->password = Hash::make($req->password);
        $newUser->role_id = $req->role_id;

        $newUser->save();

        return redirect()->back();
    }

    public function logOut(Request $req)
    {
        Auth::logout();

        $req->session()->invalidate();

        $req->session()->regenerateToken();

        return redirect('/');
    }
}
