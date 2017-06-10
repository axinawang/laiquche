package com.ynlqc.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.Car;
import com.ynlqc.service.CarService;
import com.ynlqc.utils.BeanFactory;

/**
 * Servlet implementation class IndexServlet
 */
public class IndexServlet extends BaseServlet {
	@Override
	public String index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 去数据库中查询热门车 将他们放入request域中 请求转发
		CarService ps = (CarService) BeanFactory.getBean("CarService");
		// 热门车
		List<Car> hotList = null;
		try {
			hotList = ps.findHot();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("hList", hotList);
		return "/jsp/index.jsp";
	}

}