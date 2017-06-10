package com.ynlqc.web.servlet;

import java.io.IOException;
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
import com.ynlqc.service.CarService;
import com.ynlqc.service.CategoryService;
import com.ynlqc.service.impl.CarServiceImpl;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;

/**
 * Servlet implementation class CategoryServlet
 */
public class CarServlet extends BaseServlet {

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
		
		
		return "/jsp/car_info.jsp";
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
		//首付
		double down_payment=request.getParameter("down_payment")==null?-1.0:Double.parseDouble(request.getParameter("down_payment"));
		//月供
		double month_payment=request.getParameter("month_payment")==null?-1.0:Double.parseDouble(request.getParameter("month_payment"));
		//当前页
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//搜索关键字
		String searh_key=request.getParameter("searh_key")==null?"":request.getParameter("searh_key");
		
		
		
		
		//2.调用service 返回值pagebean
		CarService service=(CarService) BeanFactory.getBean("CarService");
		
		/*PageBean<Car> bean=service.findByPage(
				currPage,Constant.PAGE_SIZE,brand_id,
				model_id,down_payment,month_payment);*/
		
		PageBean<Car> bean = null;

			bean = service.findByPage(
					currPage,Constant.PAGE_SIZE,brand_id,
					model_id,down_payment,month_payment,searh_key);
			
			//3.将结果放入request中 请求转发
			request.setAttribute("page_bean", bean);
			request.setAttribute("brand_id", brand_id);
			return "/jsp/car_list.jsp";
		
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
		int brand_id=request.getParameter("brand_id")==null?-1:Integer.parseInt(request.getParameter("brand_id"));
		//车型
		int model_id=request.getParameter("model_id")==null?-1:Integer.parseInt(request.getParameter("model_id"));
		//首付
		double down_payment=request.getParameter("down_payment")==null?-1.0:Double.parseDouble(request.getParameter("down_payment"));
		//月供
		double month_payment=request.getParameter("month_payment")==null?-1.0:Double.parseDouble(request.getParameter("month_payment"));
		//当前页
		int currPage=request.getParameter("currPage")==null?1:Integer.parseInt(request.getParameter("currPage"));
		//搜索关键字
		String searh_key=request.getParameter("searh_key")==null?"":request.getParameter("searh_key");
		
		
		
		
		//2.调用service 返回值pagebean
		CarService service=(CarService) BeanFactory.getBean("CarService");
		
		/*PageBean<Car> bean=service.findByPage(
				currPage,Constant.PAGE_SIZE,brand_id,
				model_id,down_payment,month_payment);*/
		
		PageBean<Car> bean = null;

			bean = service.findByPage(
					currPage,Constant.PAGE_SIZE,brand_id,
					model_id,down_payment,month_payment,searh_key);
			
			// 2.将返回值转成json格式 返回到页面上
			//request.setAttribute("clist", clist);
			//String json = JsonUtil.object2json(bean);
			List<Car> list=bean.getList();
			List<CarJson> listCarJson=new ArrayList<CarJson>() ;
			for (Car car : list) {
				CarJson json=new CarJson();
				json.setCar_id(car.getCar_id());
				json.setCar_name(car.getCar_name());
				json.setCar_image(car.getCar_image());
				json.setCar_flag(car.getCar_flag());
				json.setDeposit(car.getDeposit());
				json.setDown_payment(car.getDown_payment());
				json.setMonth_payment(car.getMonth_payment());
				json.setGuide_price(car.getGuide_price());
				listCarJson.add(json);
			}
			String listJson=JsonUtil.list2json(listCarJson);
			
			
			//3.写回去
			response.setContentType("text/html;charset=utf-8");
			response.getWriter().println(listJson);
			
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
				-1,-1.0,-1.0,"");
		
		//3.将结果放入request中 请求转发
		request.setAttribute("page_bean", bean);
		return "/jsp/car_list.jsp";
	}
}
