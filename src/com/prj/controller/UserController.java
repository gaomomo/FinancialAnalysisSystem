package com.prj.controller;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pri.utils.RandomValidateCode;
import com.prj.bean.User;
import com.prj.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@Autowired
	UserService userService;
	
	//跳转到登录页面
	@RequestMapping("/Login")
	public String vipLogin(HttpServletRequest request){
		return "userLogin";
	}

	/** 
    * 登录页面生成验证码 
    */  
   @RequestMapping(value = "/getVerify")  
   public void getVerify(HttpServletRequest request, HttpServletResponse response){  
       response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片  
       response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容  
       response.setHeader("Cache-Control", "no-cache");  
       response.setDateHeader("Expire", 0);  
       RandomValidateCode randomValidateCode = new RandomValidateCode();  
       try {  
           randomValidateCode.getRandcode(request, response);//输出验证码图片方法  
       } catch (Exception e) {  
           e.printStackTrace();  
       }  
   }

   /** 
    * 验证登录 
    * @param model 
    * @param userName 
    * @param password 
    * @param inputStr 
    * @param session 
    * @return 
 * @throws IOException 
    */  
   @RequestMapping(value = "/verifyLogin", method = RequestMethod.POST)  
   public String login(HttpServletRequest request, String username, String password,String user_input_verifyCode, HttpSession session,HttpServletResponse response) 
		   throws IOException {  
	   //从session中获取随机数  
       String random = (String) session.getAttribute("RANDOMVALIDATECODEKEY"); 
       System.out.println(random);
       
       String user = new String(username.getBytes("ISO-8859-1"), "utf-8");
       String pass = new String(password.getBytes("ISO-8859-1"), "utf-8");
	   String verifyCode = new String(user_input_verifyCode.getBytes("ISO-8859-1"), "utf-8");

       System.out.println("输入参数的账号是："+user+"，输入参数的密码是："+pass+"，输入验证码是："+verifyCode);
		
		User user1 = new User();
		user1.setUsername(user);
		user1.setPassword(pass);
		System.out.println("输入的user为：" + user1.toString());
		
       User user2=userService.selectByLoginnameAndPassword(user1); 
       System.out.println("数据库查询的user：" + user2);
       
       if (user2 != null) {
		if (random.equals(verifyCode)) {
			 //登录成功
			//将用户的信息存入到session中
			session.setAttribute("user2", user2);
			//登录前拿到过滤器中存入的登录页前的那个存入session中的URL
			String realPath = (String)session.getAttribute("realPath");
			System.out.println("登录界面，拿到那个URL:"+realPath);
			if (realPath == null) {
				//session.removeAttribute("realPath");
				//response.sendRedirect("/index.jsp");
				return "secindex";
			}
			return "redirect:"+realPath;
		}else {
			request.setAttribute("error","验证码错误");  
            return "redirect:/user/Login";  
		}
	}else {
		request.setAttribute("error","用户名或密码错误");  
        return "redirect:/user/Login";  
	}
   
   }  


	
}
