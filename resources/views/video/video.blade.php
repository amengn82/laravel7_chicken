@extends('master')

@section('title')
    ฺvideo
@endsection

@section('style')
    
    <style>
    /* tabs news update*/
    h1 {
        text-align: center;
        text-decoration: underline;
    }
    ul {
        list-style-type: none;
    }
    a {
        text-decoration: none;
    }
    #tabs1,
    #tabs2,
    #tabs3,
    #tabs4 {
        width: 80%;
        margin: 0px auto;
    }
    .tabs-image {
        width: 33.33%;
        float: left;
        box-sizing: border-box;
        padding: 10px;
    }
    p {
        font-weight: bold;
    }
    </style>
@endsection

@section('content')
<div class='container'>
    <div class='clear'></div>
    <h1>ไก่แสนอร่อยที่คณคุ้นเคย</h1>
    <section class="content">
        <div class="content-img">
            <img src="{{ asset('images/kfcvideo.jpg') }}" alt="kfcvideo.jpg">
        </div>
        <div class="content-info">
            <h1>เรียนรู้วิธีทำไก่แสนอร่อย</h1>
            <p>ลองเรียนรู้วิธีทำไก่ทอดสไตส์ KFC เพื่อวันหยุดสุดสัปดาห์ที่แสนวิเศษกับครอบครัว</p>
        </div>
        <div class="clear"></div>
    </section>
    <section class='news-update'>
        <article class='clip'>
            <div id='tabs1'>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/3CVDrAkhDmI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>KFC style Fried Chicken Recipe by Tiffin Box | Kentucky Fried Chicken, Spicy Crispy chicken fry</p>
                </div>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Y-06GmP98rk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>THE KFC BUCKET OF FRIED CHICKEN...BUT HOMEMADE & WAY BETTER! | SAM THE COOKING GUY</p>
                </div>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/7WJYOgzFydc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>The End The Final KFC Recipe Video - KFC secret Ingredients revealed - Glen And Friends Cooking</p>
                </div>
                <div class='clear'></div>
            </div>
            <div id='tabs2'>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/KTABK8Il4Ko" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>Food Theory: I SOLVED KFC's Secret Recipe! (KFC Chicken)</p>
                </div>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Opix6TJwTpM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>How to Make the Best One-Batch Fried Chicken</p>
                </div>
                <div class='tabs-image'>
                    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/NEOj2L3atKQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    <p>KFC Chicken Recipe│ KFC Style Fried Chicken Recipe│Fried Chicken│KFC Chicken│Crispy Chicken│Chicken│</p>
                </div>
                <div class='clear'></div>
            </div>
        </article>
    </section>
</div>
@endsection