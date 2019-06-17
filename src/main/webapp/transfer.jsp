<%--
  Created by IntelliJ IDEA.
  User: 王庆虎
  Date: 2019/6/15
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

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
                        url:"Operation/transfer",
                        dataType:"json",
                        data:$("form").serialize(),
                        success:function (data) {
                            if (data.code == 1){

                                alert(data.info);
                                alert("正确")
                              /*  window.location.href="main.jsp";*/

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
                    balance:{
                        //不许为空
                        required:true,
                        number: true

                    },
                },

                messages:{

                    card:{
                        required:"卡号不允许为空",
                        minlength:"卡号必须为16位",
                        maxlength:"卡号必须为16位",
                        number:"卡号必须为全数字",
                    },
                    balance:{
                        required:"金额不允许为空",
                        number:"请正确填写转账金额",

                    },
                }
            })



        })

    </script>

</head>
<body style="text-align:center;margin-top: 100px">

<div><h1>当前操作：转账。请输入转入账号和金额后点"转账"按钮</h1></div>

<form action="#" method="post" onsubmit="return false">
    输入账号：&nbsp;&nbsp;<input type="text" id="card" placeholder="card" name="card"/><br/>
    输入金额：&nbsp;&nbsp;<input type="text" id="expend" placeholder="expend" name="record.expend"/>
    <input type="submit" value="转账"/>
</form>
</body>
</html>
