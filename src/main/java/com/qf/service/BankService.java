package com.qf.service;

import com.qf.domain.Bank;

public interface BankService {


    Bank loginIn(String card);

    Bank selectBalance(Integer id);
/*
    void  addtransfer(Bank bank);

    void  jiantransfer(Bank bank);

    Bank selectbank(String card);*/

    void updatePassword(String password ,String card);

}
