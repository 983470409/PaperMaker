package com.zhang.pojo;
import java.sql.Timestamp;



public class PostEntity {

    private String postId;
    private String account;
    private Timestamp postDate;
    private String postLable;
    private int psotComNum;
    private int postLikeNum;
    private int postUnlikeNum;

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public Timestamp getPostDate() {
        return postDate;
    }

    public void setPostDate(Timestamp postDate) {
        this.postDate = postDate;
    }

    public String getPostLable() {
        return postLable;
    }

    public void setPostLable(String postLable) {
        this.postLable = postLable;
    }

    public int getPsotComNum() {
        return psotComNum;
    }

    public void setPsotComNum(int psotComNum) {
        this.psotComNum = psotComNum;
    }

    public int getPostLikeNum() {
        return postLikeNum;
    }

    public void setPostLikeNum(int postLikeNum) {
        this.postLikeNum = postLikeNum;
    }

    public int getPostUnlikeNum() {
        return postUnlikeNum;
    }

    public void setPostUnlikeNum(int postUnlikeNum) {
        this.postUnlikeNum = postUnlikeNum;
    }

    @Override
    public String toString() {
        return "PostEntity{" +
                "postId='" + postId + '\'' +
                ", account='" + account + '\'' +
                ", postDate=" + postDate +
                ", postLable='" + postLable + '\'' +
                ", psotComNum=" + psotComNum +
                ", postLikeNum=" + postLikeNum +
                ", postUnlikeNum=" + postUnlikeNum +
                '}';
    }
}
