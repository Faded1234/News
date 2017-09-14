package com.ruanko.service;

import java.util.List;

import com.ruanko.entity.News;
import com.ruanko.entity.Page;


public interface NewsService extends BaseService<News>{
	
	//查询最新的新闻
	public  List<News> selectNew();
	//查询热点新闻
	public  List<News> selectHot();
	//通过用户id分页查询
	public  Page<News> selectByUserId(Page<News> page);
	//通过keyword分页查询
	public  Page<News> selectByKey(Page<News> page);
}
