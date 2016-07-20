package com.shixun.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.shixun.demo.entity.User;
import com.shixun.demo.service.UserService;

public class UserServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// 声明一个变量，用来接收用户的确定操作的参数
		String oper = request.getParameter("oper");
		if (oper == null || oper.trim().length() == 0) {
			throw new RuntimeException("您要请求的方法为空!");
		} else if (oper.equals("login")) {
			this.login(request, response);
		} else if (oper.equals("validName")) {
			this.validName(request, response);
		}else if (oper.equals("reg")) {
			this.reg(request, response);
		}else if (oper.equals("forward")) {
			this.forward(request, response);
		}else if (oper.equals("signout")) {
			this.signout(request, response);
		}else{
			throw new RuntimeException("您要请求的方法不存在!");
		}

	}

	public void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户表单提交的登陆信息
		String name = request.getParameter("loginName");
		String pass = request.getParameter("loginPass");
		// 执行登陆的业务操作
		UserService userService = new UserService();
		User user = userService.login(name, pass);
		
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		if (user == null) {
			session.setAttribute("error", "用户名/密码错误，登陆失败");			
			out.print(false);
		} else {
			session.setAttribute("loginUser", user);
			out.print(true);
		}

	}

	public void validName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("loginName");
		UserService userService = new UserService();
		User user = userService.validName(name);
		PrintWriter out = response.getWriter();
		
		if (user == null) {
			out.print(true);
		} else {
			out.print(false);
		}

	}

	public void reg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("urName");
		String pass = request.getParameter("urPass");
		String email = request.getParameter("urEmail");
		
		User user = new User();
		user.setLoginName(name);
		user.setLoginPass(pass);
		user.setEmail(email);
/**		如果默认字段很多，那么在数据库已经设置默认值，这里又一个一个赋值显然不符合逻辑，
 * 		所以在user.hbm.xml中的class中加上 dynamic-insert="true" dynamic-update="true"
 * 		表示如果添加时set(null),则不添加该字段，所以就将使用数据库默认的值
 * 		如果只是直接在property中加上default,那么直接save时仍然会set(null)，不起作用，但是比如用
 * 		hql添加其他字段值时，这时会为这个字段设置default中指定的值
 		//数据库中虽然是有默认值，但是实体类里并没有，所以如果不赋值hibernate会写入null
		user.setAuthority(1);
		user.setStatus(0);*/
		UserService userService = new UserService();
		PrintWriter out = null;
		try{
			out = response.getWriter();
//			response.setContentType("application/json; charset=utf-8");
//			String jsonStr = "{\"isSucceed\":\"true\",\"info\":\"user的json字符串\"}"; 
//			String errorjsonStr = "{\"isSucceed\":\"false\",\"info\":\"用户名/密码错误，登陆失败\"}";  
		    
			if (userService.reg(user)) {
				out.print(true);
			} else {
				out.print(false);
			}
			
		} catch (IOException e) {
		    e.printStackTrace();
		} finally {
		    if (out != null) {
		        out.close();
		    }
		}
									
	}

	public void forward(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户表单提交的登陆信息
			
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("loginUser");

			int authority = user.getAuthority().intValue();
			switch(authority){
			case 1:
				response.sendRedirect(request.getContextPath() + "/index.jsp");
				break;
			case 2:
				response.sendRedirect(request.getContextPath() + "/index2.jsp");
				break;
			case 10:
				response.sendRedirect(request.getContextPath() + "/index3.jsp");
				break;
			default:
				response.sendRedirect(request.getContextPath() + "/index.jsp");
				break;
			}				
	}
	
	public void signout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户表单提交的登陆信息
		

		// 执行登陆的业务操作
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("loginUser");
		String name = user.getLoginName();
		UserService userService = new UserService();
		userService.signout(name);
		session.setAttribute("loginUser", null);
		response.sendRedirect(request.getContextPath() + "/index3.jsp");
		

	}
}
