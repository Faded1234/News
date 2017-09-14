package com.ruanko.web;



import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ruanko.entity.NewType;
import com.ruanko.entity.News;
import com.ruanko.entity.Page;
import com.ruanko.service.NewTypeService;
import com.ruanko.service.NewsService;


@Controller
@RequestMapping("/news")
public class NewsAction extends BaseAction {

	@Resource
	private NewsService newsService;
	@Resource
	private NewTypeService newTypeService;
	
	//进入创建新闻页面
	@RequestMapping(value="/createNews")
	public String createNews(HttpServletRequest request){
		try {
			Page<NewType> page= new Page<NewType>();
			page.setPage(1);
			page.setRows(10);
			Page<NewType> selectType = newTypeService.selectPage(page);
			request.getSession().setAttribute("selectType", selectType.getList());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/createNews";
	}		
	//进入新闻详细页面
	@RequestMapping("/detail")
	public String goURL(HttpServletRequest request,Model model) {
		String id = request.getParameter("id");
		News news=new News();
		news.setId(Integer.parseInt(id));
		News select;
		try {
			select = newsService.select(news);
			model.addAttribute("select",select);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/detail";
	}
	//进入审核新闻页面
	@RequestMapping("/checkNews")
	public String checkNews(HttpServletRequest request,Model model) {
		Page<News> pages =new Page<News>();
		News news = new News();
		String page = request.getParameter("page");
		if("".equals(page)||  page==null){
			page="1";
		}
		news.setState(0);
		System.out.println(news);
		pages.setParamEntity(news);
		pages.setRows(10);
		pages.setPage(Integer.parseInt(page));
		if(pages.getPage()<=0){
			pages.setPage(1);
		}
		Page<News> checkNews = newsService.selectByUserId(pages);
		System.out.println(checkNews.getList());
		request.getSession().setAttribute("checkNews", checkNews);
		return "/checkNews";
	}
	
	//新闻审核通过
	@RequestMapping("/pass")
	public String pass(HttpServletRequest request,Model model) throws Exception {
		String id = request.getParameter("id");
		if(id==null||"".equals(id)){
			return "forward:checkNews";
		}
		News news =new News();
		news.setState(1);
		news.setId(Integer.parseInt(id));
		newsService.update(news);
		return "forward:checkNews";
	}	
	//新闻审核不通过
	@RequestMapping("/fail")
	public String fail(HttpServletRequest request,Model model) throws Exception {
		String id = request.getParameter("id");
		if(id==null||"".equals(id)){
			return "forward:checkNews";
		}
		News news =new News();
		news.setState(2);
		news.setId(Integer.parseInt(id));
		newsService.update(news);
		return "forward:checkNews";
	}	
	
}
