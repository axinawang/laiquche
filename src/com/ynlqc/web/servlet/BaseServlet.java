package com.ynlqc.web.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;





public class BaseServlet extends HttpServlet {

	Logger logger=Logger.getLogger(getClass());
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {//获取子类对象
		Class clazz=this.getClass();
		System.out.println("Servlet : "+this);
		String m=request.getParameter("method");
		logger.info("log method : "+m);
		System.out.println("method : "+m);
		if (m==null) {
			m="index";
		}
		
			Method method=clazz.getMethod(m, HttpServletRequest.class,HttpServletResponse.class);
			String res=(String) method.invoke(this, request,response);
			if (res!=null) {
				request.getRequestDispatcher(res).forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new RuntimeException();
		}
		
	}
	public String index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return null;
	}
	
}
