function email_validation() {
    var x = document.forms["form_homeSubscribe"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
        alert("不是一个有效的 e-mail 地址");
        return false;
    }
}
