package com.ttc.ssm.interceptor;


import com.ttc.ssm.po.Student_info;
import com.ttc.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

	//进入 Handler方法之前执行
	//用于身份认证、身份授权
	//比如身份认证，如果认证不通过表示当前用户没有登陆，需要此方法拦截不再向下执行
	@Autowired
	UserService userService;
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		System.out.println("LoginInterceptor1...preHandle");
		//取得当前请求的url
		String url = request.getRequestURI();
		System.out.println("---------"+url);
		
		//如果是登录请求，不拦截
		if(url.indexOf("login.action")>0) {
			return true;
		}


		HttpSession hs = request.getSession();
		String strInfo = (String)hs.getAttribute("userinfo");//如果未登录，strInfo将为null

		if(strInfo != null)
		{
			String[] strArr = strInfo.split(",");//lili,456----> strArr[0]=lili strArr[1]=456
			Student_info user = new Student_info();
			user.setStudent_name(strArr[0]);
			user.setStudent_pass(strArr[1]);
			//UserDao udao = new UserDao();
			Student_info tui = userService.Login(user);
			if(tui != null)
			{
				//业务代码
				return true;
			}
			else
			{
				response.sendRedirect("../jsp/login.jsp");
				return false;
			}
		}
		else
		{
			response.sendRedirect("../jsp/login.jsp");
			return false;
		}
		
	}

	//进入Handler方法之后，返回modelAndView之前执行
	//应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里传到视图，也可以在这里统一指定视图
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("LoginInterceptor...postHandle");
		
	}

	//执行Handler完成执行此方法
	//应用场景：统一异常处理，统一日志处理
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		System.out.println("LoginInterceptor...afterCompletion");
	}

}
