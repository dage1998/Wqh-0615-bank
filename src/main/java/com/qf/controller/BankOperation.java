package com.qf.controller;

import com.qf.common.JsonBean;
import com.qf.domain.Bank;
import com.qf.service.BankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.security.util.Password;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/Operation")
public class BankOperation {


            @Autowired
            private BankService bankService;


            @ResponseBody
            @RequestMapping("/deposit")
            public JsonBean deposit(HttpServletRequest request){


                System.out.println("12313");

                Integer id = (Integer) request.getSession().getAttribute("id");

                System.out.println(id);

                Bank bank = bankService.selectBalance(id);

                System.out.println(bank);

                if (bank != null){
                    return new JsonBean(1,bank);
                }
                return new JsonBean(0,"服务器开小差,请退出重试！");
            }


            @ResponseBody
            @RequestMapping("/transfer")
            public JsonBean transfer(HttpServletRequest request,Bank bank){



                return  new JsonBean(1,null);
            }

            @ResponseBody
            @RequestMapping("/password")
            public JsonBean password(HttpServletRequest request, @RequestParam("password")String password ,@RequestParam("newPassword") String newPassword){

                String card = (String) request.getSession().getAttribute("card");

                Bank bank = bankService.loginIn(card);

                if (bank != null){
                    if (!password.equals(bank.getPassword())){
                        return new JsonBean(0,"旧密码输入错误！");
                    }else{
                        bankService.updatePassword(newPassword,card);
                        return  new JsonBean(1,"修改成功!");
                    }
                }

                return new JsonBean(0,"服务器开小差，请重新登录重试");
            }
}
