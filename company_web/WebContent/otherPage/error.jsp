<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>errorPage</title>
    <link rel="stylesheet" href="../src/config/style.css" type="text/css" />
</head>
<body>
<!--顶部导航栏-->
<ul id="head" class="leading">
    <li class="leading" style="float: left; margin-left: 4.5%; margin-top: 1.3%; margin-right: 4%"><b style="color: white; font-size: 2.8em">Avangers</b></li>
    <li class="leading" style="float: right; margin-right: 3%"><a class="leading" href="../index.jsp">Go Back</a></li>
</ul>
<!--Main-->
<div style="width: 66%; height: 600px; background-color: rgba(165,0,0,0.78); margin-left: auto; margin-right: auto; margin-top: 4%; text-align: center">
    <p style="text-indent: 0; font-size: 3em; padding-top: 3%">Something Error</p>
    <p style="text-indent: 0; font-size: 1.8em; padding-top: 20%">Exception:
    <%= exception.getMessage() %>
    </p>
    <p id="back" style="font-size: 1.8em; padding-top: 3%; padding-bottom: 2%"></p>
    <a href="../index.jsp" style="color: white; font-size: 1.5em;">Click here to back</a>
    <script type="text/javascript">
        var i=3;
        function changeTime(){
            document.getElementById("back").innerHTML="Back to home page in " + i + "s ...";
            i--;
            if (i <= -1) {
                document.getElementById("back").innerHTML="Time Out! Please back to home page manually.";
            }
        }
        changeTime();
        var inId=window.setInterval("changeTime()",1000);
        function autoRedirect(){
            window.location="/news/index.jsp";
        }
        window.setInterval("autoRedirect()", 3000);
    </script>
</div>
<!--底栏-->
<div style="background-color: white; margin-top: 2.6%;">
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
</body>
</html>