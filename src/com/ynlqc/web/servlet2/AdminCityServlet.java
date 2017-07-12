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
import com.ynlqc.utils.UUIDUtils;

/**
 * Servlet implementation class CityServlet
 */
public class AdminCityServlet extends BaseServlet {

	/**
	 * 查询所有的品牌
	 * 
	 * @throws Exception
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.调用categoryservice 查询所有的分类信息 返回值 list
		CityService cs = (CityService) BeanFactory.getBean("CityService");
		List<City> list = cs.findAll();

		// 2.将list放入request域中 请求转发即可
		request.setAttribute("list", list);
		return "/admin/city/list.jsp";
	}

	public String addUI(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/admin/city/add.jsp";
	}

	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.接受cname
		String name = request.getParameter("name");

		// 2.封装category
		City c = new City();
		c.setCity_id(UUIDUtils.getId());
		c.setName(name);

		// 3.调用service完成 添加操作
		CityService cs = (CityService) BeanFactory.getBean("CityService");
		cs.add(c);

		// 4.重定向 查询所有分类
		response.sendRedirect(request.getContextPath() + "/adminCity?method=findAll");

		return null;
	}
	public String getById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		String cid = request.getParameter("city_id");
		
		//2 调用service完成 查询操作 返回值:category
		CityService cs=(CityService) BeanFactory.getBean("CityService");
		City c=cs.getById(cid);
		
		//3.将category放入request域中, 请求转发  /admin/category/edit.jsp
		request.setAttribute("bean", c);
		return "/admin/city/edit.jsp";
	}
	/**
	 * 修改城市
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		City bean=new City();
		bean.setCity_id(request.getParameter("city_id"));
		bean.setName(request.getParameter("name"));
		
		//2 调用service完成 查询操作 返回值:category
		CityService cs=(CityService) BeanFactory.getBean("CityService");
		cs.update(bean);
		
		response.sendRedirect(request.getContextPath() + "/adminCity?method=findAll");
		return null;
	}
	/**
	 * 删除城市
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		String city_id=request.getParameter("city_id");
		
		//2 调用service完成 查询操作 返回值:category
		CityService cs=(CityService) BeanFactory.getBean("CityService");
		cs.delete(city_id);
		
		response.sendRedirect(request.getContextPath() + "/adminCity?method=findAll");
		return null;
	}
}
