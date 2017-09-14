package com.ruanko.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ruanko.dao.NewsMapper;
import com.ruanko.entity.News;
import com.ruanko.entity.Page;
import com.ruanko.service.NewsService;


@Service("newsService")
public class NewsServiceImpl extends BaseServiceImpl<News> implements NewsService {

	@Autowired
	protected NewsMapper newsMapper;

	public List<News> selectNew() {
		List<News> selectNew = newsMapper.selectNew();
		return selectNew;
	}

	public List<News> selectHot() {
		List<News> selectHot = newsMapper.selectHot();
		return selectHot;
	}


	public Page<News> selectByUserId(Page<News> page) {
		page.setList(newsMapper.selectPageListByUserId(page));
		page.setTotalRecord(newsMapper.selectPageCountByUserId(page));
		return page;
	}

	public Page<News> selectByKey(Page<News> page) {
		page.setList(newsMapper.selectPageListKey(page));
		page.setTotalRecord(newsMapper.selectPageCountKey(page));
		return page;
	}
}