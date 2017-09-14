package com.ruanko.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ruanko.entity.User;


public class NewsInterceptor implements HandlerInterceptor{

	//进入 Handler方法之前执行
	//拦截器进行登录验证
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object arg2, Exception arg3)
			throws Exception {
	}

	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		
	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object object) throws Exception {
		String url = request.getRequestURI();

		//通过
		if(url.indexOf("base")>=0){
			return true;
		}
		if(url.indexOf("login")>=0){
			return true;
		}
		if(url.indexOf("register")>=0){
			return true;
		}
		if(url.indexOf("detail")>=0){
			return true;
		}
		//判断session
		HttpSession session  = request.getSession();
		//从session中取出用户身份信息
		User users = (User) session.getAttribute("loginuser");
		if(users !=null){
			return true;
		}
		//执行这里表示用户身份需要认证，跳转登陆页面
		request.getRequestDispatcher("/user/logins").forward(request, response);
		
		return false;
	}

}
