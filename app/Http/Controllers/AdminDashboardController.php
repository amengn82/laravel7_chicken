<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Menu;
use App\Cart;

class AdminDashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function dashboard()
    {
        $user = User::all();
        $menu = Menu::all();
        $cart = Cart::all();

        $count_admin = $user->where('is_admin','=','1')->count();
        $count_user = $user->where('is_admin','=','0')->count();
        $count_menu = $menu->count();
        $count_menu_01 = $menu->where('detail','=','โคเรียน')->count();
        $count_menu_02 = $menu->where('detail','=','ชุดบักเก็ตฟอร์วัน')->count();
        $count_menu_03 = $menu->where('detail','=','ไก่วิงซ์ซี้ด')->count();
        $count_menu_04 = $menu->where('detail','=','อิ่มสุขใจ')->count();
        $count_menu_05 = $menu->where('detail','=','เดอะบอกซ์')->count();

        
        $count_cart = $cart->count();
        $count_preorder = $cart->where('status','=','preorder')->count();
        $count_ordered = $cart->where('status','=','ordered')->count();

        return view('admindashboard',compact(
                                        'count_admin',
                                        'count_user',
                                        'count_menu',
                                        'count_menu_01',
                                        'count_menu_02',
                                        'count_menu_03',
                                        'count_menu_04',
                                        'count_menu_05',
                                        'count_cart',
                                        'count_preorder',
                                        'count_ordered',
                                        
                                        ));
    }
}