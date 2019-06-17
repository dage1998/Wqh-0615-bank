<%--
  Created by IntelliJ IDEA.
  User: 王庆虎
  Date: 2019/6/4
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人网上银行</title>

    <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>

    <style>
        .error{
            color: red;
            font-size: 12px;
        }
    </style>
    <script type="text/javascript">



            $(function(){
                $("form").validate({
                    submitHandler:function () {
                        $.ajax({
                            type:"post",
                            url:"Login/in",
                            dataType:"json",
                            data:$("form").serialize(),
                            success:function (data) {
                                    if (data.code == 1){

                                         alert(data.info);

                                         window.location.href="main.jsp";

                                    }else{

                                        alert(data.info);

                                    }
                            }

                        })
                    },

                    rules:{
                        card:{
                            //不许为空
                            required:true,
                            minlength:16,
                            maxlength:16,
                            number: true

                        },
                        password:{
                            //不许为空
                            required:true,
                            minlength:6
                        },
                    },

                    messages:{

                        card:{
                            required:"卡号不允许为空",
                            minlength:"卡号必须为16位",
                            maxlength:"卡号必须为16位",
                            number:"卡号必须为全数字",
                        },
                        password:{
                            required:"密码不允许为空",
                            minlength:"密码最少位6位",
                        },
                    }

                })
            })

    </script>

</head>
<body >
        <form action="#" method="post" onsubmit="return false">
            <table border="2px" style="width:500px ; height:200px; margin-left: 550px;margin-top: 200px">
                <tr>
                    <td style="text-align:center "colspan="2"> <h1>个人网上银行</h1></td>
                </tr>
                <tr>
                    <td style="text-align:center " colspan="2">
                        请输入卡号： <input type="text" id="card"  name="card"  placeholder="card" value="1111111111111111" style="border-radius: 10px" />
                    </td>
                </tr>

                <tr>
                    <td style="text-align:center " colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入密码： <input type="password" id="password"  name="password" placeholder="password" value="123456" style="border-radius: 10px"/>
                    </td>
                </tr>

                <tr>
                    <td style="width: 220px;text-align: center"><button type="submit" style="border-radius: 10px;width: 80px;height: 25px;">进入</button></td>
                </tr>
            </table>
        </form>
</body>
</html>
