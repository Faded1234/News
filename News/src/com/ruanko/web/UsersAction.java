package com.ruanko.web;


import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.ruanko.entity.News;
import com.ruanko.entity.Page;
import com.ruanko.entity.User;
import com.ruanko.service.NewsService;
import com.ruanko.service.UserService;

@Controller
@RequestMapping("/user")
public class UsersAction extends BaseAction {

	@Resource
	private UserService userService;
	@Resource
	private NewsService newsService;
	
	//进入用户登录页面
	@RequestMapping(value="/logins")
	public String login(HttpServletRequest request){
		return "/login";
	}
	//用户注销返回登录登录页面
	@RequestMapping(value="/loginOut")
	public String loginOut(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("loginuser");
		if(user.getName()!=null||user.getName().length()>=0){
			request.getSession().removeAttribute("loginuser");
			request.getSession().removeAttribute("info");
		}
		return "/login";
	}
	//进入用户注册密码页面
	@RequestMapping(value="/registers")
	public String register(){
			return "/register";
	}	
	@RequestMapping(value="/create")
	public String create(@ModelAttribute("news") News news,Model model,@RequestParam("file") CommonsMultipartFile  file,HttpServletRequest request){
		return "/myNews";
	}	
	//进入用户我的新闻页面
	@RequestMapping(value="/myNews")
	public String myNews(HttpServletRequest request){
/*		News news = new News();
		news.setState(0);
		User user = (User) request.getSession().getAttribute("loginuser");
		int user_id = user.getId();
		Page<News> pageNews =new Page<News>();
		pageNews.setPage(1);
		pageNews.setRows(6);
		pageNews.setKeyWord(String.valueOf(user_id));
		pageNews.setParamEntity(news);
		Page<News> selectNewsPage = newsService.selectByUserId(pageNews);
		request.getSession().setAttribute("selectNewsPage",selectNewsPage );*/
		return "/myNews";
	}	
	
	//ajax返回用户新闻
	@RequestMapping("/selectNews")
	public @ResponseBody Object selectNews(Page<News> page , String state,String userId){
		News news = new News();
		news.setState(Integer.parseInt(state));
		news.setUserId(Integer.parseInt(userId));
		System.out.println(news);
		page.setParamEntity(news);
		if(page.getPage()<=0){
			page.setPage(1);
		}
		Page<News> p = newsService.selectByUserId(page);
		System.out.println(p.getList());
/*		Map<String,Object> map=new HashMap<String,Object>();
		map.put("total", p.getTotalRecord());
		map.put("rows",p.getList() );*/
		return p;
	}
	//登陆验证
	@RequestMapping(value="/loginIn")
	public String login(User user,HttpServletRequest request,Model model){
		
		User loginuser=userService.login(user);
		if(loginuser != null){
			request.getSession().setAttribute("loginuser", loginuser);
			//return "/index";
			if(loginuser.getRole()==1){
				return "editorFrame";
			}
			return "adminFrame";
		}else{
			String info= "密码错误，请重新登陆！";
			request.getSession().setAttribute("info", info);
			//return "forward:/WEB-INF/jsp/login.jsp";
			return "/login";
		}
	}

	//用户注册
	@RequestMapping(value="/registerIn")
	public String loginout(User user,HttpServletRequest request,Model model) throws Exception{
		//判断用户是否已经存在
		System.out.println("我进来了");
		System.out.println(user);
		User select = new User();
		select.setName(user.getName());
		User selectUser = userService.select(select);
		System.out.println(selectUser+"*************");
		if(selectUser!=null){
			String info= "用户名重复，请重新注册！";
			request.getSession().setAttribute("info", info);
			return "/register";	
		}
		int register = userService.register(user);
		if(register==1){
			String info= "注册成功，请登陆！";
			request.getSession().setAttribute("info", info);
			return "/login";			
		}
		return "/register";	
	}
	//进入新闻详细页面
	@RequestMapping("/preview")
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
		return "/preview";
	}
}
