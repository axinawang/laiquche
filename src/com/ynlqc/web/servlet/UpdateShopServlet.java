package com.ynlqc.web.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.ynlqc.dao.impl.CarDaoImpl;
import com.ynlqc.domain.Brand;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.City;
import com.ynlqc.domain.Model;
import com.ynlqc.domain.Series;
import com.ynlqc.domain.Shop;
import com.ynlqc.myconverter.MyConverter;
import com.ynlqc.service.CarService;
import com.ynlqc.service.ShopService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.UUIDUtils;
import com.ynlqc.utils.UploadUtils;



/**
 * Servlet implementation class AddCar
 */
public class UpdateShopServlet extends HttpServlet {
	public static Logger logger = Logger.getLogger(UpdateShopServlet.class);
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			//0.创建map 放入前台传递的数据
			HashMap<String, Object> map = new HashMap<>();
			
			//创建磁盘文件项
			DiskFileItemFactory factory = new DiskFileItemFactory();
			//创建核心上传对象
			ServletFileUpload upload = new ServletFileUpload(factory);
			//解析request
			List<FileItem> list = upload.parseRequest(request);
			List<Car> cars=new ArrayList<Car>();
			//遍历集合
			for (FileItem fi : list) {

				//判断是否是普通的上传组件
				if(fi.isFormField()){
					String fildName=fi.getFieldName();
					//如果是车的多选，那么就加入数组列表中
					if ("carList".equals(fildName)) {
						cars.add(new Car(fi.getString("utf-8")));
					}else {
						//普通上传组件
					map.put(fildName,fi.getString("utf-8"));
					}
					
				}else{
					//文件上传组件
					//获取文件名称
					String name = fi.getName();
					
					//如果没有上传文件，该字段就不要加入map
					if (name != "") {
						System.out.println("文件名称："+(name==""));
						// 获取文件的真实名称 xxxx.xx
						String realName = UploadUtils.getRealName(name);
						// 获取文件的随机名称
						String uuidName = UploadUtils.getUUIDName(realName);

						// 获取文件的存放路径
						String path = this.getServletContext().getRealPath("/shop");

						// 获取文件流
						InputStream is = fi.getInputStream();
						// 保存图片
						FileOutputStream os = new FileOutputStream(new File(path, uuidName));

						IOUtils.copy(is, os);
						os.close();
						is.close();

						// 删除临时文件
						fi.delete();

						// 在map中设置文件的路径
						map.put(fi.getFieldName(), "shop/" + uuidName);
					}
				
			}}
			
			
			
			//1.封装参数
			ShopService service=(ShopService) BeanFactory.getBean("ShopService");
			Shop bean =service.getById((String) map.get("shop_id")); 
			ConvertUtils.register(new MyConverter(), City.class);

			BeanUtils.populate(bean, map);
			
			/*City city = new City();
			city.setCity_id((String)map.get("city_id"));			
			bean.setCity(city);
			*/
			
			
			
			
			//2.调用service完成添加
			
			service.update(bean,cars);
			
			//3.页面重定向
			response.sendRedirect(request.getContextPath()+"/adminShop?method=findAll");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "商品添加失败~");
			request.getRequestDispatcher("/jsp/msg.jsp").forward(request, response);
			return;
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}