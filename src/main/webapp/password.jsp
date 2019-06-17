<%--
  Created by IntelliJ IDEA.
  User: 王庆虎
  Date: 2019/6/15
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>修改密码</title>
    <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
</head>
<body>
<h3>当前操作：修改密码。请按要求填写完整后点”修改“按钮</h3><br/>
<form action='user/editPassword' method='post' onsubmit='return false'>

    请输入原密码：<input type='password' name='password'/><br/>

    请输入新密码：<input type='password' id='newPassword' name='newPassword'/><br/>

    请确认新密码：<input type='password' name='newPassword2'/><br/>

    <button type='submit'>修改</button>

</form>

<script type="text/javascript">
    $(function () {
        $("form").validate({
            submitHandler: function() {
                $.ajax({
                    type:"post",
                    url:"Operation/password",
                    data:$("form").serialize(),
                    dataType:"json",
                    success:function (data) {
                        if(data.code == 1){
                            alert(data.info);
                            top.location.href="login.jsp";

                        }else{
                            alert(data.info);
                        }
                    }
                })
            },
            rules:{
                password:{
                    required:true,
                    digits:true,
                    minlength:6,
                    maxlength:6,
                },
                newPassword:{
                    required:true,
                    digits:true,
                    minlength:6,
                    maxlength:6,
                },
                newPassword2:{
                    required:true,
                    digits:true,
                    minlength:6,
                    maxlength:6,
                    equalTo:"#newPassword",
                }
            },
            messages:{
                password:{
                    required:"请将表单填写完整",
                    digits:"密码只能是整数数字",
                    minlength:"密码只能是6位数字",
                    maxlength:"密码只能是6位数字",
                },
                newPassword:{
                    required:"请将表单填写完整",
                    digits:"密码只能是整数数字",
                    minlength:"密码只能是6位数字",
                    maxlength:"密码只能是6位数字",
                },
                newPassword2:{
                    required:"请将表单填写完整",
                    digits:"密码只能是整数数字",
                    minlength:"密码只能是6位数字",
                    maxlength:"密码只能是6位数字",
                    equalTo:"两次输入的密码不一样",
                },

            }
        })
    })
</script>
</body>

</html>