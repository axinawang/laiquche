package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.Brand;
import com.ynlqc.service.BrandService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;
import com.ynlqc.web.servlet.BaseServlet;

/**
 * Servlet implementation class BrandServlet
 */
public class BrandServlet extends BaseServlet {

	/**
	 * 查询所有的品牌
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.调用Brandservice 查询所有的分类 返回值list
		BrandService cs = (BrandService) BeanFactory.getBean("BrandService");
		List<Brand> clist = null;
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
	
	/**
	 * 查询热门品牌
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	
	public String findHotBrand(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("BrandServlet  findHotBrand");
		// 1.调用Brandservice 查询所有的分类 返回值list
		BrandService cs = (BrandService) BeanFactory.getBean("BrandService");
		List<Brand> clist = null;
		try {
			clist = cs.findHotBrand();
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
