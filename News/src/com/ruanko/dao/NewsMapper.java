package com.ruanko.dao;

import java.util.List;

import com.ruanko.entity.News;
import com.ruanko.entity.Page;


public interface NewsMapper extends BaseMapper<NewsMapper>{
	//查询最新的新闻
	public List<News> selectNew();
	//查询热点新闻
	public List<News> selectHot();
	//查询用户创建的新闻
	public List<News> selectPageListByUserId(Page<News> page);
	//查询用户创建的新闻条数
	public Integer selectPageCountByUserId(Page<News> page);
	//查询keyword新闻
	public List<News> selectPageListKey(Page<News> page);
	//查询keyword的新闻条数
	public Integer selectPageCountKey(Page<News> page);
}