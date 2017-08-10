package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jndi.url.corbaname.corbanameURLContextFactory;
import com.ynlqc.constant.Constant;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.CarJson;
import com.ynlqc.domain.Category;
import com.ynlqc.domain.PageBean;
import com.ynlqc.domain.Shop;
import com.ynlqc.service.CarService;
import com.ynlqc.service.CategoryService;
import com.ynlqc.service.impl.CarServiceImpl;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;
import com.ynlqc.utils.PropertiesUtil;
import com.ynlqc.web.servlet.BaseServlet;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class CategoryServlet
 */
public class CarServlet extends BaseServlet {
	/**
	 * 根据车辆id查找拥有该车的门店
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String getShopByCarId(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String car_id=request.getParameter("car_id");
		System.out.println("car_id="+car_id);
		CarService service=(CarService) BeanFactory.getBean("CarService");
		List<Shop> shops=service.getShopByCarId(car_id);
		
		
		
		return null;
	}
	/**
	 * 根据id查询单个车辆
	 * @throws Exception 
	 */
	public String getByCarId(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		String car_id=request.getParameter("car_id");
		System.out.println("car_id="+car_id);
		CarService service=(CarService) BeanFactory.getBean("CarService");
		Car car=service.getByCarId(car_id);
		request.setAttribute("bean", car);

		List<Shop> shops=service.getShopByCarId(car_id);
		
		request.setAttribute("shops", shops);
		return "/jsp2/detail.jsp";
	}
	/**
	 * 分页查询数据
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String  findByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//品牌
		int brand_id=request.getParameter("brand_id")==null?-1:Integer.parseInt(request.getParameter("brand_id"));
		//车型
		int model_id=request.getParameter("model_id")==null?-1:Integer.parseInt(request.getParameter("model_id"));
		//车系
		int series_id=request.getParameter("series_id")==null?-1:Integer.parseInt(request.getParameter("series_id"));
		//首付
		double down_payment=request.getParameter("down_payment")==null?-1.0:Double.parseDouble(request.getParameter("down_payment"));
		//月供
		double month_payment=request.getParameter("month_payment")==null?-1.0:Double.parseDouble(request.getParameter("month_payment"));
		//当前页
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//搜索关键字
		String search_key=request.getParameter("search_key")==null?"":request.getParameter("search_key");
		
		System.out.println("search_key:"+search_key);
		
		
		//2.调用service 返回值pagebean
		CarService service=(CarService) BeanFactory.getBean("CarService");
		
		PageBean<Car> bean = null;
		//从配置文件中获取一页显示数量
		int pagesize=Integer.parseInt(PropertiesUtil.getValueByKey("/config.properties", "PAGE_SIZE"));
			bean = service.findByPage(
					currPage,pagesize,brand_id,
					model_id,series_id,down_payment,month_payment,search_key);
			
			//3.将结果放入request中 请求转发
			request.setAttribute("page_bean", bean);
			request.setAttribute("brand_id", brand_id);
			return "/jsp2/car_list.jsp";
		
		}
	/**
	 * Ajax分页查询数据
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String  findByPageAjax(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//品牌
		int brand_id=(request.getParameter("brand_id")==null||request.getParameter("brand_id")=="")?-1:Integer.parseInt(request.getParameter("brand_id"));
		//车型
		int model_id=(request.getParameter("model_id")==null||request.getParameter("model_id")=="")?-1:Integer.parseInt(request.getParameter("model_id"));
		//车系
		int series_id=request.getParameter("series_id")==null?-1:Integer.parseInt(request.getParameter("series_id"));
		//首付
		double down_payment=(request.getParameter("down_payment")==null||request.getParameter("down_payment")=="")?-1.0:Double.parseDouble(request.getParameter("down_payment"));
		//月供
		double month_payment=(request.getParameter("month_payment")==null||request.getParameter("month_payment")=="")?-1.0:Double.parseDouble(request.getParameter("month_payment"));
		//当前页
		int currPage=(request.getParameter("currPage")==null||request.getParameter("currPage")=="")?1:Integer.parseInt(request.getParameter("currPage"));
		//搜索关键字
		String search_key=request.getParameter("search_key")==null?"":request.getParameter("search_key");
		//测试请求过来时没有该参数
		//String testParam=request.getParameter("testParam")==null?"null":request.getParameter("testParam");
		//测试请求过来时该参数没有值
		//String testParam=request.getParameter("testParam")==null?"kong zi fu chuan":request.getParameter("testParam");
				
		//System.out.println("testParam:"+testParam);
		//search_key =  URLDecoder.decode((new String(search_key.getBytes("ISO8859-1"), "UTF-8")), "UTF-8");
		search_key=URLDecoder.decode(search_key, "UTF-8");
		System.out.println("brand_id:"+brand_id);
		System.out.println("CarServlet2 search_key:"+search_key);
		
		//2.调用service 返回值pagebean
		CarService service=(CarService) BeanFactory.getBean("CarService");
	
		PageBean<Car> bean = null;
		//从配置文件中获取一页显示数量
		int pagesize=Integer.parseInt(PropertiesUtil.getValueByKey("/config.properties", "PAGE_SIZE"));
		
			bean = service.findByPage(currPage,pagesize,brand_id,
					model_id,series_id,down_payment,month_payment,search_key);
			
			
			String pageBeanJson=JSONObject.fromObject(bean).toString();
			//System.out.println(pageBeanJson);
			
			//3.写回去
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().println(pageBeanJson);
			return null;
		
		}
		
		


	/**
	 * 分页按品牌查询数据
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String  findByBrand(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.获取类别 当前页  设置一个pagesize
		int brand_id=Integer.parseInt(request.getParameter("brand_id"));
		
		
		
		//2.调用service 返回值pagebean
		CarService service=(CarService) BeanFactory.getBean("CarService");
		PageBean<Car> bean = null;

		bean = service.findByPage(
				1,Constant.PAGE_SIZE,brand_id,
				-1,-1,-1.0,-1.0,"");
		
		//3.将结果放入request中 请求转发
		request.setAttribute("page_bean", bean);
		return "/jsp2/car_list.jsp";
	}
	public String  findHotCar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//当前页
				int currPage=(request.getParameter("currPage")==null||request.getParameter("currPage")=="")?1:Integer.parseInt(request.getParameter("currPage"));
				//品牌
				int brand_id=request.getParameter("brand_id")==null?-1:Integer.parseInt(request.getParameter("brand_id"));
						
		CarService service=(CarService) BeanFactory.getBean("CarService");
		PageBean<Car> bean = null;
		
		bean = service.findHotCar(currPage, Constant.PAGE_SIZE);
		
		//3.将结果放入request中 请求转发
		request.setAttribute("page_bean", bean);
		request.setAttribute("brand_id", brand_id);
		return "/jsp2/car_list.jsp";
	}
}
