package com.shixun.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.shixun.demo.dao.UserDao;
import com.shixun.demo.entity.Student;
import com.shixun.demo.entity.User;
import com.shixun.demo.service.AdminService;
import com.shixun.demo.service.UserService;

public class AdminServlet extends HttpServlet {

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
		} else if (oper.equals("queryAllTables")) {
			this.queryAllTables(request, response);
		} else if (oper.equals("queryByTableName")) {
			this.queryByTableName(request, response);
		}else if (oper.equals("queryByConditions")) {
			this.queryByConditions(request, response);
		}else{
			throw new RuntimeException("您要请求的方法不存在!");
		}

	}

	public void queryAllTables(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 执行获取所有表名的业务操作
		AdminService adminService = new AdminService();
		List<String> tables = adminService.queryAllTables();		
		HttpSession session = request.getSession();		
		session.setAttribute("queryAllTables", tables);
		response.sendRedirect(request.getContextPath() + "/queryAllTables.jsp");
	}

	public void queryByTableName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("tableName");

		// 执行通过表名查询整表
		AdminService adminService = new AdminService();
		List<?> table = adminService.queryByTableName(name);
		HttpSession session = request.getSession();	
		if(table.size()!=0){
			session.setAttribute("queryByTableName", table);
			request.setAttribute("tableName", name);
	        Map map = new HashMap();
	        map.put("data", table);
	        map.put("draw", 1);
	        map.put("recordsTotal", 38);
	        map.put("recordsFiltered", 38);
	        String jsonstr = new JSONObject(map).toString();
	        System.out.println(jsonstr);
//	        response.getWriter().write(jsonstr);
	        request.getRequestDispatcher("/queryByTableName.jsp").forward(request, response);
//			response.sendRedirect(request.getContextPath() + "/queryByTableName.jsp");
		}else{
			response.sendRedirect(request.getContextPath() + "/noSuchTableName.jsp");
		}	


	}

	public void queryByConditions(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("tableName");

		// 还没有实现
		AdminService adminService = new AdminService();
		List<String> table = adminService.queryAllTables();		
		HttpSession session = request.getSession();		
		session.setAttribute("queryByTableName", table);
		response.sendRedirect(request.getContextPath() + "/queryByTableName.jsp");
	}

}
