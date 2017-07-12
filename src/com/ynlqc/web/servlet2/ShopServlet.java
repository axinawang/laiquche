package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.Shop;
import com.ynlqc.service.ShopService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;

/**
 * Servlet implementation class ShopServlet
 */
public class ShopServlet extends BaseServlet {

	/**
	 * 查询所有的品牌
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.调用Shopservice 查询所有的分类 返回值list
		ShopService cs = (ShopService) BeanFactory.getBean("ShopService");
		List<Shop> clist = null;
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
	public String findByCity(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String city_id=request.getParameter("city_id");
		// 1.调用Shopservice 查询所有的分类 返回值list
		ShopService cs = (ShopService) BeanFactory.getBean("ShopService");
		List<Shop> clist = null;
		try {
			clist = cs.findByCity(city_id);
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
