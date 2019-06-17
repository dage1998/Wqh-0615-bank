package com.qf.service.impl;


import com.qf.dao.BankDaoMapper;
import com.qf.domain.Bank;
import com.qf.service.BankService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankServiceImpl implements BankService{

    @Autowired(required = false)
    private BankDaoMapper bankDaoMapper;


    @Override
    public Bank loginIn(String card) {
        return bankDaoMapper.loginIn(card);
    }

    @Override
    public Bank selectBalance(Integer id) {
        return bankDaoMapper.selectBalance(id);
    }

   /* @Override
    public void addtransfer(Bank bank) {
        bankDaoMapper.addtransfer(bank);
    }

    @Override
    public void jiantransfer(Bank bank) {
        bankDaoMapper.jiantransfer(bank);
    }

    @Override
    public Bank selectbank(String card) {
        return bankDaoMapper.selectbank(card);
    }*/

    @Override
    public void updatePassword(String password ,String card) {
        bankDaoMapper.updatePassword(password,card);
    }


}
