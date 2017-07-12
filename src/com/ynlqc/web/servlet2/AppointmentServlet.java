package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;
import com.ynlqc.myconverter.MyConverter;
import com.ynlqc.service.AppointmentService;
import com.ynlqc.service.UserService;
import com.ynlqc.service.impl.UserServiceImpl;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;
import com.ynlqc.utils.MD5Utils;
import com.ynlqc.utils.UUIDUtils;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class UserServlet
 */
public class AppointmentServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception{
		AppointmentService service=(AppointmentService) BeanFactory.getBean("AppointmentService");
		Appointment bean = new Appointment();
		ConvertUtils.register(new MyConverter(), Date.class);
		ConvertUtils.register(new MyConverter(), Shop.class);
		ConvertUtils.register(new MyConverter(), User.class);
		ConvertUtils.register(new MyConverter(), Car.class);
		BeanUtils.populate(bean, request.getParameterMap());
		
		bean.setAppointment_id(UUIDUtils.getId());
		service.add(bean);
		request.setAttribute("msg", "预约成功，稍后客服会与您联系！");
		return "/jsp/msg.jsp";
	}

	
}
