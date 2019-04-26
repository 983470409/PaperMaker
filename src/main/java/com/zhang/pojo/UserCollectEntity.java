package com.zhang.pojo;


public class UserCollectEntity {

    private String collectId;
    private String account;
    private String ePaperId;
    private String collectBeiZhu;

    public String getCollectId() {
        return collectId;
    }

    public void setCollectId(String collectId) {
        this.collectId = collectId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getePaperId() {
        return ePaperId;
    }

    public void setePaperId(String ePaperId) {
        this.ePaperId = ePaperId;
    }

    public String getCollectBeiZhu() {
        return collectBeiZhu;
    }

    public void setCollectBeiZhu(String collectBeiZhu) {
        this.collectBeiZhu = collectBeiZhu;
    }

    @Override
    public String toString() {
        return "UserCollectEntity{" +
                "collectId='" + collectId + '\'' +
                ", account='" + account + '\'' +
                ", ePaperId='" + ePaperId + '\'' +
                ", collectBeiZhu='" + collectBeiZhu + '\'' +
                '}';
    }
}
