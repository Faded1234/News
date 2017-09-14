package com.ruanko.entity;

import java.io.Serializable;

public class User implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 8352303100553686085L;

	private Integer id;		//唯一标示

    private String name;	//姓名

    private String passwords;	//密码

    private Integer role;	//角色 1管理员 2普通编辑

    private Integer del;	//删除状态 0未删除 1已删除

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

    public String getPasswords() {
        return passwords;
    }

    public void setPasswords(String passwords) {
        this.passwords = passwords;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Integer getDel() {
        return del;
    }

    public void setDel(Integer del) {
        this.del = del;
    }

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", passwords=" + passwords
				+ ", role=" + role + ", del=" + del + "]";
	}
    
}