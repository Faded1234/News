package com.ruanko.web;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ruanko.entity.News;
import com.ruanko.entity.Page;
import com.ruanko.service.NewsService;



@Controller
@RequestMapping("/base")
public class BaseAction {
//	@Resource
//	ServletContext applition;
	
	//方法参数folder通过@PathVariable指定其值可以从@RequestMapping的{folder}获取，同理file也一样
/*	@RequestMapping("/goURL/{folder}/{file}")
	public String goURL(@PathVariable String folder,@PathVariable String file) {
		System.out.println("goURL.folder|file===" + folder+"/"+file);
		return "forward:/WEB-INF/"+folder+"/"+file+".jsp";
	}*/
/*	
	@Resource
	 private GoodsService goodsService;
	
	//进入登录页面
	@RequestMapping(value="/login")
	public String login( ) {
		return "/login";
	}
	*/
	@Resource
	private NewsService newsService;	
	//进入首页展示
	@RequestMapping(value="/list")
	public String list(Model model,HttpServletRequest request) {
		
		
		Map<String,Object> map = new HashMap<String, Object>();
		
		for (int i = 1; i <= 6; i++) {
			Page<News> page = new Page<News>();
			page.setKeyWord("" + i);
			page.setPage(1);
			page.setRows(8);
			Page<News> selectPage = newsService.selectPage(page);
			map.put("pageList"+i, selectPage.getList());
			//map.put("use", use);
			model.addAttribute("map", map);
		}
		List<News> selectNew = newsService.selectNew();
		request.getSession().setAttribute("selectNew", selectNew);
		
		List<News> selectHot = newsService.selectHot();
		request.getSession().setAttribute("selectHot", selectHot);
		return "/index";
	}
	//进入分类页面
	@RequestMapping(value="/newsType")
	public String newsType(Model model,HttpServletRequest request) {
		String id =(String) request.getParameter("id");
		String page =(String) request.getParameter("page");
		if("".equals(page)||  page==null){
			page="1";
		}
		int currentPage = Integer.parseInt(page);
		Page<News> pageNews = new Page<News>();
		pageNews.setRows(10);
		pageNews.setKeyWord(id);
		pageNews.setPage(currentPage);;
		Page<News> selectPage = newsService.selectPage(pageNews);
		request.setAttribute("selectPage", selectPage);
		return "/newsType";
	}
	//进入搜索页面
	@RequestMapping(value="/search")
	public String search(Model model,HttpServletRequest request) {
		News news = new News();
		String name =(String) request.getParameter("name");
		String type =(String) request.getParameter("newstypeId");
		String page =(String) request.getParameter("page");
		if("".equals(page)||  page==null){
			page="1";
		}
		if("".equals(type)||  type==null){
			type="";
			news.setNewId(null);
		}else{
			news.setNewId(Integer.parseInt(type));
		}
		int currentPage = Integer.parseInt(page);
		Page<News> pageNews = new Page<News>();
		pageNews.setRows(10);
		pageNews.setKeyWord(name);
		pageNews.setPage(currentPage);
		pageNews.setParamEntity(news);
		System.out.println(pageNews);
		Page<News> selectPage = newsService.selectByKey(pageNews);
		request.setAttribute("selectPage", selectPage);
		return "/newsType";
	}
}
