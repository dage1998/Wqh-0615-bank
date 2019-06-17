<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>个人网上银行----主界面</title>
    <style>
        .content{
            float: left;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
</head>
<body>

卡号：${card}
<a href="javascript:logout()">退出</a>
<br />
<br />
<div id="content">

    <div class="content" >
        <a href="balance.jsp" target="contentFrame">查询余额</a>
    </div>

    <br />
    <br />


    <div class="content">
        <a href="transfer.jsp" target="contentFrame">转账</a>
    </div>

    <br />
    <br />


    <div class="content">
        <a href="houseinfo.jsp" target="contentFrame">查询交易记录</a>
    </div>

    <br />
    <br />


    <div class="content">
        <a href="password.jsp" target="contentFrame">修改密码</a>
    </div>

    <div class="content" style="float: right;margin-right: 200px;margin-top: -150px" >
        <iframe src="index.jsp" name="contentFrame" width="1000" height="600"></iframe>
    </div>
</div>


<script type="text/javascript">
    function logout(){
        $.ajax({
            type:"get",
            url:"Login/out",
            success:function(data){
                if(data.code == 1){
                    window.location.href = "login.jsp";
                }else{
                    alert(data.info);
                }
            }
        })
    }

</script>


</body>
</html>