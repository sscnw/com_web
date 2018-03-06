<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>subscribe</title>
</head>
<body>
    <div style="margin: 10%; margin-left: 30%">
        <p>Subscribe Successfully!</p>
        <p id="time"></p>
        <a href="../index.jsp">Click to back</a>
    </div>
    <script type="text/javascript">
        var i=3;
        function changeTime(){
            document.getElementById("time").innerHTML="Back to home page in " + i + "s ...";
            i--;
            if (i <= -1) {
                document.getElementById("time").innerHTML="Time Out! Please back to home page manually.";
            }
        }
        changeTime();
        var inId=window.setInterval("changeTime()",1000);
        function autoRedirect(){
            window.location="../index.jsp";
        }
        window.setInterval("autoRedirect()",3000);
    </script>
</body>
</html>