package com.qf.dao;

import com.qf.domain.Bank;
import org.apache.ibatis.annotations.Param;

public interface BankDaoMapper {


    Bank loginIn(String card);

    Bank selectBalance(Integer id);

   /* void  addtransfer(Bank bank);

    void  jiantransfer(Bank bank);*/

   /* Bank selectbank(String card);*/

    void updatePassword(@Param("password")String password ,@Param("card") String card);
}
