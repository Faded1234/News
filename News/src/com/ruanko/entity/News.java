package com.ruanko.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author gyw
 *	新闻实体类
 */
public class News implements Serializable{
	
	private static final long serialVersionUID = 6273200082906302486L;

	private Integer id;			//id唯一标示
    
    private String title;		//标题

    private String author;		//作者

    private String keyword;		//关键字

    private String soure;		//来源

    private Date creattime;		//创建时间

    private Integer click;		//点击量

    private Integer state;		//状态 0待审核 1已发布 2已废除

    private Integer del;		//删除  0未删除 1已删除

    private Integer userId;		//发布新闻的用户id

    private Integer newId;		//新闻类型id

    private String content;     //正文
    
    private NewType newType;    //一对一映射
    

    public NewType getNewType() {
		return newType;
	}

	public void setNewType(NewType newType) {
		this.newType = newType;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getSoure() {
        return soure;
    }

    public void setSoure(String soure) {
        this.soure = soure;
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public Integer getClick() {
        return click;
    }

    public void setClick(Integer click) {
        this.click = click;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getNewId() {
        return newId;
    }

    public void setNewId(Integer newId) {
        this.newId = newId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + ", author=" + author
				+ ", keyword=" + keyword + ", soure=" + soure + ", creattime="
				+ creattime + ", click=" + click + ", state=" + state
				+ ", del=" + del + ", userId=" + userId + ", newId=" + newId
				+ ", content=" + content + ", newType=" + newType + "]";
	}


    
}