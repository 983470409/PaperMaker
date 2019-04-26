package com.zhang.pojo;

import java.sql.Timestamp;

public class ETemplateOpRecoEntity {
    private String eTemplRecoId;
    private String ePaperId;
    private Timestamp eTemplRecoOpDate;
    private Object eTemplRecoOpTypes;
    private String eTemplRecoBeiZhu;
    private String account;

    public String geteTemplRecoId() {
        return eTemplRecoId;
    }

    public void seteTemplRecoId(String eTemplRecoId) {
        this.eTemplRecoId = eTemplRecoId;
    }

    public String getePaperId() {
        return ePaperId;
    }

    public void setePaperId(String ePaperId) {
        this.ePaperId = ePaperId;
    }

    public Timestamp geteTemplRecoOpDate() {
        return eTemplRecoOpDate;
    }

    public void seteTemplRecoOpDate(Timestamp eTemplRecoOpDate) {
        this.eTemplRecoOpDate = eTemplRecoOpDate;
    }

    public Object geteTemplRecoOpTypes() {
        return eTemplRecoOpTypes;
    }

    public void seteTemplRecoOpTypes(Object eTemplRecoOpTypes) {
        this.eTemplRecoOpTypes = eTemplRecoOpTypes;
    }

    public String geteTemplRecoBeiZhu() {
        return eTemplRecoBeiZhu;
    }

    public void seteTemplRecoBeiZhu(String eTemplRecoBeiZhu) {
        this.eTemplRecoBeiZhu = eTemplRecoBeiZhu;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "ETemplateOpRecoEntity{" +
                "eTemplRecoId='" + eTemplRecoId + '\'' +
                ", ePaperId='" + ePaperId + '\'' +
                ", eTemplRecoOpDate=" + eTemplRecoOpDate +
                ", eTemplRecoOpTypes=" + eTemplRecoOpTypes +
                ", eTemplRecoBeiZhu='" + eTemplRecoBeiZhu + '\'' +
                ", account='" + account + '\'' +
                '}';
    }
}
