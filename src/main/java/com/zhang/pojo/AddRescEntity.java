package com.zhang.pojo;

public class AddRescEntity {
    private String addResId;
    private String ePaperId;
    private String postId;

    public String getAddResId() {
        return addResId;
    }

    public void setAddResId(String addResId) {
        this.addResId = addResId;
    }

    public String getePaperId() {
        return ePaperId;
    }

    public void setePaperId(String ePaperId) {
        this.ePaperId = ePaperId;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    @Override
    public String toString() {
        return "AddrescTableEntity{" +
                "addResId='" + addResId + '\'' +
                ", ePaperId='" + ePaperId + '\'' +
                ", postId='" + postId + '\'' +
                '}';
    }
}
