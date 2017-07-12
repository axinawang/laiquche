package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.City;
import com.ynlqc.service.CityService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;

/**
 * Servlet implementation class CityServlet
 */
public class CityServlet extends BaseServlet {

	/**
	 * 查询所有的品牌
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.调用Cityservice 查询所有的分类 返回值list
		CityService cs = (CityService) BeanFactory.getBean("CityService");
		List<City> clist = null;
		try {
			clist = cs.findAll();
		} catch (Exception e) {
			e.printStackTrace();
		}

		// 2.将返回值转成json格式 返回到页面上
		//request.setAttribute("clist", clist);
		String json = JsonUtil.list2json(clist);
		
		//3.写回去
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
		
		return null;
	}
	
	
	

}
