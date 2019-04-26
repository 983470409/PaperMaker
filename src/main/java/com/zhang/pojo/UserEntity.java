package com.zhang.pojo;

import org.apache.ibatis.type.Alias;

@Alias("user")
public class UserEntity {
    private String account;
    private String password;
    private String sex;
    private int age;
    private String status;
    private String label;
    private String eduExp;
    private int accBalance;

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getEduExp() {
        return eduExp;
    }

    public void setEduExp(String eduExp) {
        this.eduExp = eduExp;
    }

    public int getAccBalance() {
        return accBalance;
    }

    public void setAccBalance(int accBalance) {
        this.accBalance = accBalance;
    }

    @Override
    public String toString() {
        return "UserEntity{" +
                "account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", status=" + status +
                ", label='" + label + '\'' +
                ", eduExp='" + eduExp + '\'' +
                ", accBalance=" + accBalance +
                '}';
    }
}
