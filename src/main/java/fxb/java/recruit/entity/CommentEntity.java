package fxb.java.recruit.entity;

import java.sql.Timestamp;

/**
 * 对职位的评论
 */
public class CommentEntity {

    private int commentId;
    private int type;  //
    private String content;  // 评论内容
    private Timestamp releaseTime;  // 时间
    private int userId;  // 发表评论的用户
    private int positionId;  // 被评论的职位

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Timestamp releaseTime) {
        this.releaseTime = releaseTime;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPositionId() {
        return positionId;
    }

    public void setPositionId(int positionId) {
        this.positionId = positionId;
    }


}
