<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../otherPage/error.jsp" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>News</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script src="../src/config/script.js"></script>
</head>
<body style="background-image: url(../src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../index.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#news" style="background-color: white; color: black">News</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#product">Products</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#contact">Contact</a></li>
    <li class="leading"><a class="leading" href="./about.jsp">About</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="./signup.jsp">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="./login.jsp">Sign In</a></li>
    <form id="form_search" action="">
        <li class="leading" style="float: right; margin-right: 4%"><img src="../src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
        <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
</ul>
<!--地址栏-->
<div style="margin-left: 17%; margin-top: 1.7%">
    <a href="../index.jsp" style="color: black; font-size: 1.2em">Home</a>
    <img src="../src/img/icon/arrow_down-3.png" alt="" height="24px" style="vertical-align: bottom">
    <a href="" style="color: black; font-size: 1.2em">News</a>
</div>
<!--新闻主页-->
<div style="width: 66%; margin-right: auto; margin-left: auto; margin-top: 2.6%">
    <div style="width: 31%; display: inline-block; vertical-align: top">
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid;">
            <img src="../src/img/t1.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Cool scene type treadmill - technology</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Simin Qiu has developed a faucet, when you switch on the turbine rotation, which can create three different shapes of the swirling flow in addition to the wonderful, it has very good visual experience, but also have more water out of the soft and comfortable feel, more water etc.. Qpsam has developed a very awesome new boost wheels, it after the ordinary bicycle above, it can be combined with your mobile phone, you can view your riding speed and travel distance information through mobile phone. And its built-in engine provides a boost capability of 50 kilometers. It's easy to climb up the hill.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t2.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Projection type intelligent Bracelet - life</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-20]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Ritot has developed a unique bracelet with a wireless charging, charging through the wireless base; only a bracelet induction button, can be used to start the temporary through it (10 seconds) or permanent projection mechanism, or choose 20 kinds of projection color; at the same time with the intelligent mobile phone, also have the call / SMS / calendar Facebook and Twitter / email reminder, information synchronization, weather alerts and other functions.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t3.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Turbine swivel faucet - technology</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-19]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Voyager developed a treadmill, it is equipped with a large screen and interactive system, can simulate the users love place, then show where running on the screen, can also be paired with a mobile phone, you can play the game, and if the subway running cool, Temple Escape and so on,travel mode, movement mode three options and game modes.</p>
        </div>
    </div>
    <div style="width: 31%; display: inline-block; margin-left: 2.3%; vertical-align: top">
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid;">
            <img src="../src/img/t4.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">The guitar in the air - life</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%"> SimSanv developed an intelligent hardware called SoundBrace, which you can use to hit your guitar in the air when you wear it on your wrist. No matter where it is, you can improvise in the air, because there is no entity, so you need to practice, get used to and find the rhythm.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t5.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Intelligent desk lamp capable of breathing - life</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Eugene Wang has developed a smart lamp, it looks like a jellyfish, is a set of intelligent lamp with a variety of functions, it can be used as lighting Nightlight, WeChat will control the process of it, no color control switch. Remote control, with 16 million color conversion, wireless WIFI control. At the same time, it is also an air quality detection settings, testing the air Tvoc value, can effectively detect the surrounding air quality, and generate reports in the mobile phone WeChat can be observed.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t6.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Wisdom egg - life</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">The development of a smart AI fruit can help you will all the remote control integrated in a magic egg home, it supports 16 kinds of household appliances and 190 kinds of protocol, can be suitable for more than 1800 remote control, and this data is still based on household appliances new increasing, from your home no longer the need for remote control and is ugly, it is the subversion of the traditional industrial design, the perfect combination of technology and life together products.</p>
        </div>
    </div>
    <div style="width: 31%; display: inline-block; margin-left: 2.3%; vertical-align: top">
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid;">
            <img src="../src/img/t7.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Portable scanning printer - technology</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">The charger technology developed a printer, the printer will greatly improve the efficiency of your work in small batch printing, how to say? Let me give you an example: for example, if you want to copy your credentials, copy the photos on your resume, scan the photos on your ID card directly, and then print them on your resume to OK.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t8.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Volterman Wallet - technology</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Comesun developed a smart wallet, Volterman surface is a wallet, but it has all the functions of a smart phone, but there is no screen only. It has a built-in camera, running memory 512MB even when the Wi-Fi hot, it also supports Bluetooth 5 connection if you forgot your mobile phone or wallet one by another to find another, even supports wireless charging, wireless charging panel provides an optional, Volterman is activated "lost" mode, it can take to open it or any of its photographs of people.</p>
        </div>
        <div style="background-color: rgba(211,211,211,0.85); border-width: 1px; border-color: rgba(0,0,0,0.16); border-style: solid; margin-top: 6%">
            <img src="../src/img/t9.jpg" alt="" width="100%"><br>
            <p style="font-size: 1.8em; color: black; text-indent: 0; margin-top: 5%; margin-left: 5%; margin-right: 5%; margin-bottom: 0">Intelligent boosting wheel - life</p>
            <p style="font-size: 0.8em; color: rgba(0,0,0,0.46); text-indent: 0; margin-left: 5%; margin-top: 4%">[2017-08-21]</p>
            <p style="font-size: 1.2em; color: rgba(0,0,0,0.74); text-indent: 0; margin-left: 5%; margin-top: 7%; padding-bottom: 5%">Yesterday we has developed a quadrilateral plate fan drive called ArcaSpace, people can be lifted to 1 inches from the ground (2.54 cm) high suspended flight, very cool. It is reported that, ArcaSpace through 36 fans get 430 pounds of thrust (equivalent to 217 kg of a pair of adult men and women), lifting and self balancing mechanism, but because it is initial shape, the direction of progress is still limited.</p>
        </div>
    </div>
</div>
<!--底栏-->
<div style="background-color: white; margin-top: 6%;">
    <ul class="ending">
        <li class="ending" style="color: #3e3e3e; margin-left: 14.5%; margin-right: 4.5%">Copyright © 2017 Avangers Inc. All rights reserved.</li>
        <li class="ending"><a href="" class="ending">Privacy Policy</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Terms of Use</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Sales and Refunds</a></li>
        <li class="ending">|</li>
        <li class="ending"><a href="" class="ending">Legal</a></li>
        <li class="ending" style="margin-left: 4.5%"><img class="ending" src="../src/img/icon/china.png" alt="china" width="16px" height="16px"></li>
    </ul>
</div>
<!--边栏-->
<div class="tail">
    <a href="#head"><img src="../src/img/icon/top-9.png" alt="top" width="100%" style="margin-top: 1px" onmouseover="this.src='../src/img/icon/top-10.png'" onmouseout="this.src='../src/img/icon/top-9.png'"></a>
</div>
</body>
</html>