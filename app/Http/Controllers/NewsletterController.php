<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Newsletter;

class NewsletterController extends Controller
{


    public function storeEmail(Request $request){

    $validateData = $request->validate([

        'email' => 'required|email|unique:newsletters'

    ]);

    $newsletter = new Newsletter();

    $newsletter->email = $request->email;

    $newsletter->save();

    return Redirect()->back();

    }

}
