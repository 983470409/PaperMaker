package com.zhang.pojo;

import java.sql.Timestamp;


public class CommentEntity {
    private String commentId;
    private String commentContext;
    private Timestamp commentDate;
    private int commentLike;
    private int commentUnlike;
    private String account;
    private String postId;

    public String getCommentId() {
        return commentId;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public String getCommentContext() {
        return commentContext;
    }

    public void setCommentContext(String commentContext) {
        this.commentContext = commentContext;
    }

    public Timestamp getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Timestamp commentDate) {
        this.commentDate = commentDate;
    }

    public int getCommentLike() {
        return commentLike;
    }

    public void setCommentLike(int commentLike) {
        this.commentLike = commentLike;
    }

    public int getCommentUnlike() {
        return commentUnlike;
    }

    public void setCommentUnlike(int commentUnlike) {
        this.commentUnlike = commentUnlike;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPostId() {
        return postId;
    }

    public void setPostId(String postId) {
        this.postId = postId;
    }

    @Override
    public String toString() {
        return "CommentEntity{" +
                "commentId='" + commentId + '\'' +
                ", commentContext='" + commentContext + '\'' +
                ", commentDate=" + commentDate +
                ", commentLike=" + commentLike +
                ", commentUnlike=" + commentUnlike +
                ", account='" + account + '\'' +
                ", postId='" + postId + '\'' +
                '}';
    }
}
