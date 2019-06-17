<%--
  Created by IntelliJ IDEA.
  User: 王庆虎
  Date: 2019/6/15
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询余额</title>
    <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>

    <script type="text/javascript">
        $(function () {

            $.ajax({
                type:"post",
                url:"Operation/deposit",
                dataType:"json",
                success:function (data) {

                    if(data.code == 1){
                        alert(data.info.balance);

                        $("#h3").html(data.info.balance);
                    }else{
                        alert(data.info)
                    }

                }
            })
        })
    </script>

</head>

<body style="text-align: center;margin-top: 100px" >

<h1>您的账户余额是：</h1><br/>

人民币：&nbsp;&nbsp;&nbsp;<span id="h3"></span>


</body>
</html>
