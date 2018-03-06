<%--
  Created by IntelliJ IDEA.
  User: wzf
  Date: 2017/8/21
  Time: 上午8:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="./otherPage/error.jsp"  %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Avangers</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="./src/config/style.css" type="text/css" />

</head>
<body style="background-image: url(./src/img/bg.jpg);">
  <!--顶部导航栏-->
  <ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading"><a class="leading" href="./index.jsp" style="background-color: white; color: black">Home</a></li>
    <li class="leading"><a class="leading" href="./index.jsp#news">News</a></li>
    <li class="leading"><a class="leading" href="./index.jsp#product">Products</a></li>
    <li class="leading"><a class="leading" href="./index.jsp#contact">Contact</a></li>
    <li class="leading"><a class="leading" href="./secondPage/about.jsp">About</a></li>
    
    <%
    	String strUser =(String)request.getSession().getAttribute("username");
       if(null != strUser){
    %>
    
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="./secondPage/signup.jsp">Sign Out</a></li>
    <li class="leading" style="float: right"><a class="leading" href="">Welcome <%=strUser%> </a></li>
    <%
    }else{
    %>
     
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="./secondPage/signup.jsp">Sign Up</a></li>
    <li class="leading" style="float: right"><a class="leading" href="./secondPage/login.jsp">Sign In</a></li>
    <%
    }
    %>
    
    <form id="form_search" action="">
      <li class="leading" style="float: right; margin-right: 4%"><img src="./src/img/icon/search-2.png" height="21px" width="21px" onmouseover="this.style.cursor='pointer'" onclick="document.getElementById('form_search').submit()" style="margin-top: 15px; margin-left: 3px; margin-right: 15px"></li>
      <li class="leading" style="float: right"><input class="_noDecoration" type="text"; placeholder="Search Something..." style="height: 16px; width: 120px; margin-top: 15px"></li></li>
    </form>
  </ul>
  <c:if test="${requestScope.login_flag != null }">
      		<br>
    		<font color="red">${requestScope.login_flag }</font>
    		<br>
    		<br>
    	</c:if>
  <!--最新动态-->
  <div id="news" style="margin-top: 2.5%;"><br></div>
  <div CLASS="home_img" style="position: relative;">
    <span style="font-size: 2.3em; color: white">VIEW LATEST NEWS</span><img src="./src/img/icon/news-3.png" width="27" height="27" style="margin-top: 1.6%; margin-left: 1.5%">
    <button style="height: 35px; width: 12%; float: right; background: transparent; margin-top: 0.4%" onclick="window.location='./secondPage/news.jsp'"><span style="font-size: 1.5em">MORE</span></button>
    <div><img src="./src/img/n1.jpg" width="100%"></div>
    <p style="font-size: 1.3em; position: absolute; z-index: 2; left: 2.2%; top: 70%; width: 95.3%">Yesterday we has developed a quadrilateral plate fan drive called ArcaSpace, people can be lifted to 1 inches from the ground (2.54 cm) high suspended flight, very cool. It is reported that, ArcaSpace through 36 fans get 430 pounds of thrust (equivalent to 217 kg of a pair of adult men and women), lifting and self balancing mechanism, but because it is initial shape, the direction of progress is still limited.</p>
  </div>
  <!--产品展示-->
  <div id="product" style="margin-top: 2.5%;"><br></div>
  <div class="home_img">
    <span style="font-size: 2.3em; color: white; margin-bottom: 1%">SEE OUR PRODUCTS</span><img src="./src/img/icon/products-2.png" width="27" height="27" style="margin-top: 1.6%; margin-left: 1.5%">
    <button style="height: 35px; width: 12%; float: right; background: transparent; margin-top: 0.4%" onclick="window.location='./secondPage/products.jsp'"><span style="font-size: 1.5em">MORE</span></button><hr>
    <div>
      <span style="font-size: 1.7em; color: white">TODAY'S NEW</span>
      <span style="font-size: 1.7em; color: white; margin-left: 60%">TOP LIST</span>
    </div>
    <span>
      <a href=""><img src="./src/img/e1.JPEG" width="76%"></a>
    </span>
    <span style="float: right; margin-right: 10.3%">
      <ol style="color: white; font-size: 1.2em" style="padding-bottom: 2px">
        <li style="margin-top: 13%"><a href="">Adastra</a></li>
        <li style="margin-top: 13%"><a href="">TwistBike</a></li>
        <li style="margin-top: 13%"><a href="">PillClip</a></li>
        <li style="margin-top: 13%"><a href="">LivingInk</a></li>
        <li style="margin-top: 13%"><a href="">iDropper</a></li>
        <li style="margin-top: 13%"><a href="">Cicret</a></li>
        <li style="margin-top: 13%"><a href="">Falcon</a></li>
        <li style="margin-top: 13%"><a href="">C-Thru</a></li>
        <li style="margin-top: 13%"><a href="">Sea Ray</a></li>
        <li style="margin-top: 13%"><a href="">LovePalz</a></li>
      </ol>
    </span>
    <div>
      <a href=""><img src="./src/img/e2.jpg" width="25%"></a>
      <a href=""><img src="./src/img/e3.jpg" width="25%"></a>
      <a href="" onclick="transferOnClickImage1()"><img src="./src/img/e4.jpg" width="25%"></a>
    </div>
  </div>
  <!--联系我们-->
  <div id="contact" style="margin-top: 2.5%;"><br></div>
  <div class="home_img">
    <div style="font-size: 2.3em; color: white">CONTACT US NOW<img src="./src/img/icon/contact.png" width="27" height="27" style="margin-top: 1.6%; margin-left: 1.5%"></div>
    <p style="width: 80%; margin-top: 3%; margin-left: 10%">Fill in your email address even if we get the latest news of our company, do not miss any one perfect and perfect invention, make life better, thank you.</p>
    <div>
      <form id="form_homeSubscribe" action="./otherPage/subscribe.html" method="post">
        <input id="email" class="_noDecoration" type="text" placeholder=" Enter Your Email" style="margin-left: 30%; margin-top: 5%; height: 30px; width: 40%;"><br>
        <button class="button" onclick="return email_validation()" style="background-color: #00cc00; vertical-align:middle; margin-left: 30%; margin-top: 2%; height: 30px; width: 27%; font-size: 1.4em"><span>SUBSCRIBE NOW</span></button><br>
      </form>
      <div style="color: white; font-size: 1.2em; margin-left: 20%">OR:</div><br>
      <img id="qq" src="./src/img/icon/qq-4.png" alt="qq" style="height: 5%; width: 5%; margin-left: 30%;" onmouseover="this.src='./src/img/icon/qq-3.png'" onmouseout="this.src='./src/img/icon/qq-4.png'">
      <img src="./src/img/icon/wechat-6.png" alt="qq" style="height: 5%; width: 5%" onmouseover="this.src='./src/img/icon/wechat-7.png'" onmouseout="this.src='./src/img/icon/wechat-6.png'">
      <img src="./src/img/icon/weibo-2.png" alt="qq" style="height: 5%; width: 5%" onmouseover="this.src='./src/img/icon/weibo.png'" onmouseout="this.src='./src/img/icon/weibo-2.png'">
      <img src="./src/img/icon/tieba-2.png" alt="qq" style="height: 5%; width: 5%" onmouseover="this.src='./src/img/icon/tieba.png'" onmouseout="this.src='./src/img/icon/tieba-2.png'">
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
      <li class="ending" style="margin-left: 4.5%"><img class="ending" src="./src/img/icon/china.png" alt="china" width="16px" height="16px"></li>
    </ul>
  </div>
  <!--边栏-->
  <div class="tail">
    <a href="#head"><img src="./src/img/icon/top-9.png" alt="top" width="100%" style="margin-top: 1px" onmouseover="this.src='./src/img/icon/top-10.png'" onmouseout="this.src='./src/img/icon/top-9.png'"></a>
  </div>
</body>
</html>

