<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class ReportController extends Controller

{

    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    public function todaysOrder(){

        $today = date('d-m-y');

        $orders =  DB::table('orders')->where('status',0)->where('date',$today)->get();
        return view('admin.report.today_orders',compact('orders'));

    }

    public function todaysDelivery(){
        $today = date('d-m-y');
        $orders =  DB::table('orders')->where('status',3)->where('date',$today)->get();
        return view('admin.report.today_deliverys',compact('orders'));

    }
}
