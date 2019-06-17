package com.qf.domain;

import java.util.Date;

public class Bank {

    private  Integer id;
    private  String card;
    private  String password;
    private Integer status;
    private  Record record;

    //余额
    private  Double balance;


    @Override
    public String toString() {
        return "Bank{" +
                "id=" + id +
                ", card='" + card + '\'' +
                ", password='" + password + '\'' +
                ", status=" + status +
                ", record=" + record +
                ", balance=" + balance +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Record getRecord() {
        return record;
    }

    public void setRecord(Record record) {
        this.record = record;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }
}
