package com.qf.controller;


import com.qf.common.JsonBean;
import com.qf.domain.Bank;
import com.qf.service.BankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/Login")
public class BankLogin {

    @Autowired
    private BankService bankService;

    @ResponseBody
    @RequestMapping("/in")
    public JsonBean loginIn(@RequestParam("card")String card,@RequestParam("password")String password, HttpServletRequest request){

        Bank bank1 = bankService.loginIn(card);

        if (bank1 == null ){
            return new JsonBean(0,"登录失败！您输入的卡号不存在！");
        }else{
            if (!password.equals(bank1.getPassword()) ){
                return new JsonBean(0,"登录失败！密码错误！");
            }else{
                if (bank1.getStatus() != 0){
                    return new JsonBean(0,"登录失败！账号被冻结！");
                }
            }
        }
        request.getSession().setAttribute("card",bank1.getCard());
        request.getSession().setAttribute("id",bank1.getId());


        return new JsonBean(1,"登录成功！");
    }


    @ResponseBody
    @RequestMapping("/out")
    public JsonBean loginOut(HttpServletRequest request){

       request.getSession().removeAttribute("card");
       request.getSession().removeAttribute("id");

        return new JsonBean(1,null);
    }
}
