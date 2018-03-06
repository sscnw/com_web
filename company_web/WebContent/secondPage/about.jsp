<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="../otherPage/error.jsp" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>About</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
    <script src="../src/config/script.js"></script>
</head>
<body style="background-image: url(../src/img/bg.jpg);">
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="../index.jsp">Home</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#news">News</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#product">Products</a></li>
    <li class="leading"><a class="leading" href="../index.jsp#contact">Contact</a></li>
    <li class="leading"><a class="leading" href="./about.jsp" style="background-color: white; color: black">About</a></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="./signup.jsp">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="./login.jsp">Sign In</a></li>
    <form id="form_search" action="">
        <li class="leading" style="float: right; margin-right: 4%"><img src="../src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
        <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
</ul>
    <!--公司简介-->
    <div style="margin-top: 2.5%;"><br></div>
    <div class="home_img" style="position: relative;">
        <span style="font-size: 2.3em; color: white">COMPANY INTRODUCTION</span>
        <button style="height: 35px; width: 12%; float: right; background: transparent; margin-top: 0.4%"><span style="font-size: 1.5em">DETAILS</span></button><br>
        <div style="font-size: 1.9em; color: white; margin-top: 1%">Who's Avangers?</div>
        <span style="font-size: 1.3em; color: white; width: 59%; display: inline-block; vertical-align: top; text-indent: 2em; margin-top: 2.5%">Avengers is an equal opportunity employer and committed to providing equal opportunities in its employment, promotion, reward and development of staff. Our recruitment, development and promotion of employees is based on genuine merit and suitability for the job regardless of personal characteristics and circumstances. </span>
        <img src="../src/img/a3.jpg" width="40%" style="margin-top: 2.5%">
    </div>
    <!--三项数据-->
    <table style="vertical-align: middle; text-align: center; width: 66%; color: white; margin-left: 17%; margin-top: 4%">
        <tr style="font-family:  'DIN Alternate', sans-serif">
            <td style="font-size: 8em; width: 33.3%">64</td>
            <td style="font-size: 8em; width: 33.3%">197</td>
            <td style="font-size: 6.5em; width: 33.3%">1000+</td>
        </tr>
        <tr>
            <td style="font-size: 3em;">products</td>
            <td style="font-size: 3em;">shops</td>
            <td style="font-size: 3em;">hourly sales</td>
        </tr>
    </table>
    <table style="vertical-align: middle; text-align: center; width: 66%; color: white; margin-left: 17%;">
        <tr>
            <td style="background-color: white;">-</td>
            <td style="background-color: white;">-</td>
            <td style="background-color: white;">-</td>
        </tr>
    </table>
    <!--其他介绍-->
    <div>
        <div class="home_img" style="margin-top: 4%; height: 280px">
            <div style="padding-top: 2%">
                <img src="../src/img/a1.jpg" alt="" width="40%" style="float: left; margin-left: 2%">
                <span style="float: left; display: inline-block; width: 52%; margin-left: 4%">
                    <div style="font-size: 2em">Innovative</div>
                    <div style="padding-top: 2%">To maintain our vision we need people with knowledge and flair to ensure that we remain the leader and innovator in current and emerging markets and technologies. The diversity of skills, experience and cultural background of our employees is crucial to our success.</div>
                </span>
            </div>
        </div>
        <div class="home_img" style="height: 280px; margin-top: 0">
            <div style="padding-top: 2%">
                <span style="float: left; display: inline-block; width: 52%; margin-left: 4%">
                    <div style="font-size: 2em">Efficient</div>
                    <div style="padding-top: 2%">We value the diversity of our workforce and respect the differences between employees; therefore we believe that all employees are entitled to work in an environment in which they can enjoy their work and relationships with colleagues free from unwanted harassment of any kind.</div>
                </span>
                <img src="../src/img/a2.jpg" alt="" width="40%" style="float: left; margin-left: 2%">
            </div>
        </div>
        <div class="home_img" style="height: 280px; margin-top: 0">
            <div style="padding-top: 2%">
                <img src="../src/img/a4.jpg" alt="" width="40%" style="float: left; margin-left: 2%">
                <span style="float: left; display: inline-block; width: 52%; margin-left: 4%">
                    <div style="font-size: 2em">Responsible</div>
                    <div style="margin-top: 2%">We also have a commitment to provide the ultimate in customer service to our wide-ranging customer base and to enhancing our customer relationship management. We are achievers and have received awards for Excellent Performance.</div>
                </span>
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