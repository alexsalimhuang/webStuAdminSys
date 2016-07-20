package com.shixun.demo.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.criterion.DetachedCriteria;
import com.shixun.demo.entity.Student;
import com.shixun.demo.service.StudentService;

public class StudentServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 声明一个变量，用来接收用户的确定操作的参数
		String oper = request.getParameter("oper");
		if (oper == null || oper.trim().length() == 0) {
			throw new RuntimeException("您要请求的方法不存在!");
		} else if (oper.equals("list")) {
			this.list(request, response);
		}
		else if (oper.equals("ajaxlist")) {
			this.ajaxlist(request, response);
		}else if (oper.equals("conditionalQuery")) {
			this.conditionalQuery(request, response);
		}
	}
	
	
	public void list(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		StudentService studentService = new StudentService();
		HttpSession session = request.getSession();
		
		session.setAttribute("stus", studentService.search());
		response.sendRedirect(request.getContextPath() + "/stuIndex.jsp");
		
	}
	
	public void ajaxlist(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		StudentService studentService = new StudentService();
		HttpSession session = request.getSession();
		
		String key = request.getParameter("key");
		List<Student> list= studentService.searchLikeName(key);
		
		session.setAttribute("stus", list);
		response.sendRedirect(request.getContextPath() + "/partialStudentList.jsp");
		
	}
	
	public void conditionalQuery(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		StudentService studentService = new StudentService();
		HttpSession session = request.getSession();
		
		
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Student.class);
		//设置条件，在市场部部门的员工
//		detachedCriteria.add(Restrictions.eq("deptId", 1));
//		detachedCriteria.add(Restrictions.eq("sex", "女"));

		List<Student> list= studentService.conditionalQuery(detachedCriteria);		
		session.setAttribute("stus", list);
		response.sendRedirect(request.getContextPath() + "/partialStudentList.jsp");
		
	}
	
	
	
	

}
