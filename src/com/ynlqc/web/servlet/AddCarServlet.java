package com.ynlqc.web.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
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
import com.ynlqc.domain.Model;
import com.ynlqc.domain.Series;
import com.ynlqc.myconverter.MyConverter;
import com.ynlqc.service.CarService;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.UUIDUtils;
import com.ynlqc.utils.UploadUtils;



/**
 * Servlet implementation class AddCar
 */
public class AddCarServlet extends HttpServlet {
	public static Logger logger = Logger.getLogger(AddCarServlet.class);
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
			//遍历集合
			for (FileItem fi : list) {
				//判断是否是普通的上传组件
				if(fi.isFormField()){
					//普通上传组件
					map.put(fi.getFieldName(),fi.getString("utf-8"));
				}else{
					//文件上传组件
					//获取文件名称
					String name = fi.getName();
					
					//获取文件的真实名称    xxxx.xx
					String realName = UploadUtils.getRealName(name);
					//获取文件的随机名称
					String uuidName = UploadUtils.getUUIDName(realName);
					
					//获取文件的存放路径
					String path = this.getServletContext().getRealPath("/car/1");
					
					//获取文件流
					InputStream is = fi.getInputStream();
					//保存图片
					FileOutputStream os = new FileOutputStream(new File(path, uuidName));
					
					IOUtils.copy(is, os);
					os.close();
					is.close();
					
					//删除临时文件
					fi.delete();
					
					//在map中设置文件的路径
					map.put(fi.getFieldName(), "car/1/"+uuidName);
					
				}
				
			}
			
			
			
			//1.封装参数
			Car bean = new Car(); 

			BeanUtils.populate(bean, map);
			
			//1.1 商品id
			bean.setCar_id(UUIDUtils.getId());
			
			//1.2 商品时间

			  java.sql.Date  date=new java.sql.Date(new java.util.Date().getTime());
			  
			bean.setCar_date(date);
			logger.debug("当前时间："+date);
			
			//1.3 封装对象
			Brand brand = new Brand();
			brand.setBrand_id(Integer.parseInt((String)map.get("brand_id")));			
			bean.setBrand(brand);
			
			Model model=new Model();
			model.setModel_id(Integer.parseInt((String)map.get("model_id")));
			bean.setModel(model);
			
			Series series=new Series();
			series.setSeries_id(Integer.parseInt((String)map.get("series_id")));
			bean.setSeries(series);
			
			//2.调用service完成添加
			CarService ps=(CarService) BeanFactory.getBean("CarService");
			ps.add(bean);
			
			//3.页面重定向
			response.sendRedirect(request.getContextPath()+"/adminCar?method=findAll");
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
