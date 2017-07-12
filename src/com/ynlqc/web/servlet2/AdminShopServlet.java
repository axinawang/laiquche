package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.City;
import com.ynlqc.domain.Model;
import com.ynlqc.domain.Series;
import com.ynlqc.domain.Shop;
import com.ynlqc.service.BrandService;
import com.ynlqc.service.CarService;
import com.ynlqc.service.CityService;
import com.ynlqc.service.ModelService;
import com.ynlqc.service.SeriesService;
import com.ynlqc.service.ShopService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;
import com.ynlqc.utils.UUIDUtils;

/**
 * Servlet implementation class CarServlet
 */
public class AdminShopServlet extends BaseServlet {

	/**
	 * 删除车
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//1.接受shop_id
		String shop_id=request.getParameter("shop_id");
		
		//2 调用service完成 查询操作 返回值:category
		ShopService cs=(ShopService) BeanFactory.getBean("ShopService");
		cs.delete(shop_id);
		
		response.sendRedirect(request.getContextPath() + "/adminShop?method=findAll");
		return null;
	}
	
	/**
	 * 查询所有车子
	 * 
	 * @throws Exception
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 1.调用categoryservice 查询所有的分类信息 返回值 list
		ShopService cs = (ShopService) BeanFactory.getBean("ShopService");
		List<Shop> list = cs.findAll();

		// 2.将list放入request域中 请求转发即可
		request.setAttribute("list", list);
		return "/admin/shop/list.jsp";
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
		String car_id = request.getParameter("car_id");
		
		//2 调用service完成 查询操作 返回值:category
		CarService cs=(CarService) BeanFactory.getBean("CarService");
		Car c=cs.getByCarId(car_id);
		
		//3.将category放入request域中, 请求转发  /admin/category/edit.jsp
		request.setAttribute("bean", c);
		
		BrandService brandService=(BrandService) BeanFactory.getBean("BrandService");
		List<Brand> brandList = brandService.findAll();
		request.setAttribute("brandList", brandList);
		
		ModelService modelService=(ModelService) BeanFactory.getBean("ModelService");
		List<Model> modelList = modelService.findAll();
		request.setAttribute("modelList", modelList);
		
		SeriesService seriesService=(SeriesService) BeanFactory.getBean("SeriesService");
		List<Series> seriesList = seriesService.findAll();
		request.setAttribute("seriesList", seriesList);
		return "/admin/car/edit.jsp";
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
