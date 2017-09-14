package com.ruanko.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * @author gyw
 *	附件
 */
public class Attachment implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = -4016804615120906064L;

	private Integer id;			//id唯一标示

    private String filename;	//文件名称

    private String path;		//文件路径

    private Integer type;		//文件类型

    private Date uploadtime;	//上传时间

    private Integer del;		//删除状态（0或1）

    private Integer newId;		//对应新闻的id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Date getUploadtime() {
        return uploadtime;
    }

    public void setUploadtime(Date uploadtime) {
        this.uploadtime = uploadtime;
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }

    public Integer getNewId() {
        return newId;
    }

    public void setNewId(Integer newId) {
        this.newId = newId;
    }

	@Override
	public String toString() {
		return "Attachment [id=" + id + ", filename=" + filename + ", path="
				+ path + ", type=" + type + ", uploadtime=" + uploadtime
				+ ", del=" + del + ", newId=" + newId + "]";
	}
    
}