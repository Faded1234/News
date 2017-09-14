package com.ruanko.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author gyw
 *	新闻类型
 */
public class NewType implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -3120024015934881240L;

	private Integer id;		//唯一标示

    private String name;	//名称

    private String description;	//描述

    private Date creattime;		//创建时间

    private Integer orders;		//排序号 默认为0 不排序

    private Integer del;		//删除状态 0未删除 1已删除

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreattime() {
        return creattime;
    }

    public void setCreattime(Date creattime) {
        this.creattime = creattime;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }

	@Override
	public String toString() {
		return "NewType [id=" + id + ", name=" + name + ", description="
				+ description + ", creattime=" + creattime + ", orders="
				+ orders + ", del=" + del + "]";
	}
    
}