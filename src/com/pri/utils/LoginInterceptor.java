package com.pri.utils; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.prj.bean.User;


public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setCharacterEncoding("UTF-8");
		//记录当前的URL，目的是实现在详情页登录后，还调回到这里
		//获得此请求的地址，请求地址包含application name，进行subStrig操作，去除application name
			String path =request.getRequestURI().substring(24);
		//获取请求中的参数
			String queryString =request.getQueryString();
			//防止空指针
			if(queryString ==null){
			queryString ="";
			}
			//拼凑得到登录之前的地址
			String realPath =path;
			System.out.println("HistoryInterceptor中显示登录前的实际地址为:"+realPath);
			//存入到session中，登录时调用
			request.getSession().setAttribute("realPath", realPath);
			String url = request.getServletPath();    
			System.out.println("post URL："+url);
        if(!url.equals("")){
            //判斷是否已登录
            User loginUser = (User)request.getSession().getAttribute("user2");
            if(loginUser == null){
                //無session則是未登录狀態
                System.out.println(">>>未登录，請重新登录<<<");
                response.sendRedirect("../user/Login");
                return false;
            }
        }
        return true;
		//return super.preHandle(request, response, handler);
	}
	/*private boolean isPassUrl(String url){
        if(!url.endsWith("/login/login") 
                && !url.endsWith("/login/chnagePassEntry")
                && !url.endsWith("/login/change_Login")
                && !url.endsWith("/API/Service")
                && !url.endsWith("/API/Service2")
                && !url.endsWith("/province.txt")
                && !url.endsWith("/city.txt")
                && !url.endsWith("/area.txt")
                && !url.endsWith(".xml") 
                && !url.endsWith(".js") 
                && !url.endsWith(".css") && !url.endsWith(".png")
                && !url.endsWith(".CSS") && !url.endsWith(".CSS") 
                && !url.endsWith(".jpg") && !url.endsWith(".gif")
                && !url.endsWith(".JPG") && !url.endsWith(".GIF")){
            return true;
        }

        return false;
    }*/
	
}
