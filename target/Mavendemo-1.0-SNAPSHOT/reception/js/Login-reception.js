$(function () {


    //用户名
    $("#ulogname").blur(function () {

            var uname = $("#ulogname").var();

            if (null == uname || "" == uname) {
                alert("用户名不能为空");
                return false;
            }
            return true;

        }
    );


    //密码
    $("#ulogpwd").blur(function () {

        var upwd = $("#ulogpwd").var();
        if (null == upwd || "" == upwd) {
            alert("Password is doesn't null!!");
            return false
        }
        return true;
    });


    //总

    $("#log_btn").click(function () {

        var uname = $("#ulogname").var();
        var upwd = $("#ulogpwd").var();

        if (null == uname || "" == uname) {
            alert("用户名不能为空");
            return false;
        }

        var upwd = $("#ulogpwd").var();
        if (null == upwd || "" == upwd) {
            alert("Password is doesn't null!!");
            return false
        }


        return true;
    });


});