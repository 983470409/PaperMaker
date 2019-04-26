package com.zhang.pojo;

import java.sql.Timestamp;



public class EpaperEntity {

    private String ePapId;
    private String ePapName;
    private String ePapLabel;
    private double ePapPrice;
    private Timestamp ePapCreDate;
    private Object ePapStatus;
    private String account;

    @Override
    public String toString() {
        return "EpaperEntity{" +
                "ePapId='" + ePapId + '\'' +
                ", ePapName='" + ePapName + '\'' +
                ", ePapLabel='" + ePapLabel + '\'' +
                ", ePapPrice=" + ePapPrice +
                ", ePapCreDate=" + ePapCreDate +
                ", ePapStatus=" + ePapStatus +
                ", account='" + account + '\'' +
                '}';
    }

    public String getePapId() {
        return ePapId;
    }

    public void setePapId(String ePapId) {
        this.ePapId = ePapId;
    }

    public String getePapName() {
        return ePapName;
    }

    public void setePapName(String ePapName) {
        this.ePapName = ePapName;
    }

    public String getePapLabel() {
        return ePapLabel;
    }

    public void setePapLabel(String ePapLabel) {
        this.ePapLabel = ePapLabel;
    }

    public double getePapPrice() {
        return ePapPrice;
    }

    public void setePapPrice(double ePapPrice) {
        this.ePapPrice = ePapPrice;
    }

    public Timestamp getePapCreDate() {
        return ePapCreDate;
    }

    public void setePapCreDate(Timestamp ePapCreDate) {
        this.ePapCreDate = ePapCreDate;
    }

    public Object getePapStatus() {
        return ePapStatus;
    }

    public void setePapStatus(Object ePapStatus) {
        this.ePapStatus = ePapStatus;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }
}
