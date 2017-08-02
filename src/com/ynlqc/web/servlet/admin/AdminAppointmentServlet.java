package com.ynlqc.web.servlet.admin;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.City;
import com.ynlqc.domain.Shop;
import com.ynlqc.service.AppointmentService;
import com.ynlqc.service.CarService;
import com.ynlqc.service.CityService;
import com.ynlqc.service.ShopService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.DateJsonValueProcessor;
import com.ynlqc.web.servlet.BaseServlet;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * Servlet implementation class CarServlet
 */
public class AdminAppointmentServlet extends BaseServlet {

	/**
	 * 删除车
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 *//*
	public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受shop_id
		String shop_id=request.getParameter("shop_id");
		
		//2 调用service完成 查询操作 返回值:category
		ShopService cs=(ShopService) BeanFactory.getBean("ShopService");
		cs.delete(shop_id);
		
		response.sendRedirect(request.getContextPath() + "/adminShop?method=findAll");
		return null;
	}*/
	
	/**
	 * 查询所有预约
	 * 
	 * @throws Exception
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.调用categoryservice 查询所有的分类信息 返回值 list
		AppointmentService service=(AppointmentService) BeanFactory.getBean("AppointmentService");
		List<Appointment> list = service.findAll();

		// 2.将list放入request域中 请求转发即可
		request.setAttribute("AllAppointments", list);
		return "/admin/appointment/list.jsp";
	}
	/**
	 * 查询预约详情
	 * 
	 * @throws Exception
	 */
	public String getDetailByAid(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受oid
				String appointment_id = request.getParameter("appointment_id");
		AppointmentService service=(AppointmentService) BeanFactory.getBean("AppointmentService");
		
		Appointment appointment = service.getDetailByAid(appointment_id);
		
		// 2.将list放入request域中 请求转发即可
		//request.setAttribute("appointment", appointment);
		
		//3.将list转成json 写回
				//排除不用写回去的数据
				//JsonConfig config = JsonUtil.configJson(new String[]{"class","itemid","order"});
				//JSONArray json = JSONArray.fromObject(items,config);
		JsonConfig config = new JsonConfig();
        config.registerJsonValueProcessor(Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
        JSONObject json = JSONObject.fromObject(appointment, config);
		
				System.out.println(json);
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().println(json);
				
		return null;
	}

	public String addUI(HttpServletRequest request, HttpServletResponse response) throws Exception {
		CityService cityService=(CityService) BeanFactory.getBean("CityService");
		List<City> cityList = cityService.findAll();
		request.setAttribute("cityList", cityList);
		
		CarService carService=(CarService) BeanFactory.getBean("CarService");
		List<Car> carList = carService.findAll();
		request.setAttribute("carList", carList);
		
		return "/admin/shop/add.jsp";
	}
	
	public String getById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		String shop_id = request.getParameter("shop_id");
		
		//2 调用service完成 查询操作 返回值:category
		ShopService service=(ShopService) BeanFactory.getBean("ShopService");
		Shop bean=service.getById(shop_id);
		List<Car> selectedCarList=service.getCarsByShopId(shop_id);
		
		//3.将category放入request域中, 请求转发  /admin/category/edit.jsp
		request.setAttribute("bean", bean);	
		request.setAttribute("selectedCarList", selectedCarList);
		//2 调用service完成 查询操作 返回值:category
				CityService cityService=(CityService) BeanFactory.getBean("CityService");
				List<City> listCity=cityService.findAll();
				
				request.setAttribute("cityList", listCity);	
				CarService carService=(CarService) BeanFactory.getBean("CarService");
				List<Car> carList = carService.findAll();
				request.setAttribute("carList", carList);
		
		return "/admin/shop/edit.jsp";
	}

	/*public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.接受cname
		String name = request.getParameter("name");

		// 2.封装category
		Car c = new Car();
		c.setCar_id(UUIDUtils.getId());
		c.setCar_name(name);

		// 3.调用service完成 添加操作
		CarService cs = (CarService) BeanFactory.getBean("CarService");
		cs.add(c);

		// 4.重定向 查询所有分类
		response.sendRedirect(request.getContextPath() + "/adminCar?method=findAll");

		return null;
	}
	
	*//**
	 * 修改城市
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 *//*
	public String update(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		Car bean=new Car();
		bean.setCar_id(request.getParameter("city_id"));
		bean.setName(request.getParameter("name"));
		
		//2 调用service完成 查询操作 返回值:category
		CarService cs=(CarService) BeanFactory.getBean("CarService");
		cs.update(bean);
		
		response.sendRedirect(request.getContextPath() + "/adminCar?method=findAll");
		return null;
	}
	*//**
	 * 删除城市
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 *//*
	public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受cid
		String city_id=request.getParameter("city_id");
		
		//2 调用service完成 查询操作 返回值:category
		CarService cs=(CarService) BeanFactory.getBean("CarService");
		cs.delete(city_id);
		
		response.sendRedirect(request.getContextPath() + "/adminCar?method=findAll");
		return null;
	}*/
}
