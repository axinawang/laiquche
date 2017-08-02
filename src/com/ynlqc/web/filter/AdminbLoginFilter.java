/**
 * 
 */
package com.ynlqc.web.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ynlqc.domain.Admin;

public class AdminbLoginFilter extends HttpServlet implements Filter {

	public void doFilter(ServletRequest sRequest, ServletResponse sResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) sRequest;
		HttpServletResponse response = (HttpServletResponse) sResponse;
		HttpSession session = request.getSession();
		String url = request.getServletPath();
		String contextPath = request.getContextPath();
		System.out.println("Url:" +url);
		if (url.equals("")) {
			url += "/";
		}
		if ((url.startsWith("/") && url.startsWith("/admin"))) {// 若访问后台资源
			// 设置不需要过滤的页面
			if (url.endsWith("index.jsp")) {
				filterChain.doFilter(sRequest, sResponse);
				return;
			}
			// 过滤到login
			Admin admin = (Admin) session.getAttribute("admin");
			if (admin == null) {// 转入管理员登陆页面
				response.sendRedirect(contextPath + "/admin/index.jsp");
				return;
			}
		}
		filterChain.doFilter(sRequest, sResponse);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}
}
