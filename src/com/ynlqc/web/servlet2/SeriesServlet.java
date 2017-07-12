package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.Series;
import com.ynlqc.service.SeriesService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;

/**
 * Servlet implementation class SeriesServlet
 */
public class SeriesServlet extends BaseServlet {

	/**
	 * 查询所有的车系
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1.调用SeriesService 查询所有的车系 返回值list
		SeriesService cs = (SeriesService) BeanFactory.getBean("SeriesService");
		List<Series> clist = null;
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
	 * 查询热门车系
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	
	public String findHotSeries(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("SeriesServlet  findHotSeries");
		// 1.调用SeriesService 查询热门车系 返回值list
		SeriesService cs = (SeriesService) BeanFactory.getBean("SeriesService");
		List<Series> clist = null;
		try {
			clist = cs.findHotSeries();
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
