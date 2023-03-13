@extends('master')

@section('title')
    ฺKFC
@endsection

@section('content')
    <section class="content">
        <div class="content-img">
            <img src="{{ asset('images/the_box_double_cheese.png') }}" alt="the_box_double_cheese.png">
        </div>
        <div class="content-info">
            <h1>ทำความรู้จักเรา</h1>
            <p>เราเปิดกิจการมาหลายทศวรรษ ไก่ของเรามียอดขายอันดับหนึ่งจากทั่วโลก มีรายการอาหารให้เลือกหลาย 10 อย่าง ราคาเริ่มต้นเพียง 40 บาทเท่านั้น</p>
        </div>
        <div class="clear"></div>
    </section>
    <h1>ข่าวสารและกิจกรรม</h1>
    <section class="news">
        <div class="news-inner">
            <img src="{{ asset('images/topplaza.jpg') }}" alt="topplaza.jpg">
            <p>สาขาเปิดใหม่ ท็อป พลาซ่า จ.พะเยา</p>
        </div>
        <div class="news-inner">
            <img src="{{ asset('images/menukfc01.png') }}" alt="menukfc01.png">
            <p>ลองรสชาติใหม่ได้แล้ววันนี้กับไก่ KFC สไตส์เกาหลี</p>
        </div>
        <div class="news-inner">
            <img src="{{ asset('images/kfc.jpg') }}" alt="kfc.jpg">
            <p>ประสบความสำเร็จมากถึง 18,875 สาขาใน 118 ประเทศทั่วโลก</p>
        </div>
        <div class="clear"></div>
    </section>
@endsection