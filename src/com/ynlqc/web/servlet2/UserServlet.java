package com.ynlqc.web.servlet2;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;

import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Message;
import com.ynlqc.domain.User;
import com.ynlqc.myconverter.MyConverter;
import com.ynlqc.service.AppointmentService;
import com.ynlqc.service.CarService;
import com.ynlqc.service.UserService;
import com.ynlqc.service.impl.UserServiceImpl;
import com.ynlqc.utils.BeanFactory;
import com.ynlqc.utils.JsonUtil;
import com.ynlqc.utils.MD5Utils;
import com.ynlqc.utils.UUIDUtils;
import com.ynlqc.web.servlet.BaseServlet;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public String add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("UserServlet'add is invoked");
		return null;
	}

	public String registerUI(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return "/jsp2/register.jsp";
	}

	public String regist(HttpServletRequest request, HttpServletResponse response) throws Exception {
		User user = new User();
		ConvertUtils.register(new MyConverter(), Date.class);
		BeanUtils.populate(user, request.getParameterMap());
		user.setUid(UUIDUtils.getId());
		user.setCode(UUIDUtils.getCode());
		user.setPassword(MD5Utils.md5(user.getPassword()));
		UserService service = new UserServiceImpl();
		service.regist(user);
		request.setAttribute("msg", "注册成功，请去邮箱激活");

		return "/jsp/msg.jsp";
	}

	/**
	 * 激活
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String active(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String code = request.getParameter("code");
		UserService service = new UserServiceImpl();
		User user = service.active(code);
		if (user == null) {
			request.setAttribute("msg", "请重新激活");
		} else {
			request.setAttribute("msg", "激活成功，请登陆");
		}
		return "/jsp/msg.jsp";
	}

	public String loginUI(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		return "/jsp2/login.jsp";
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	public String userUI(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//检查是否登录
		User user=(User) request.getSession().getAttribute("user");
		if (user==null) {
			return "/jsp2/usercenter.jsp";
		}
		//登录后查询预约信息
		AppointmentService service=(AppointmentService) BeanFactory.getBean("AppointmentService");
		List<Appointment> myAppointments=service.getAppointmentsByUserId(user.getUid());
		request.setAttribute("myAppointments", myAppointments);
		//登录后查询我的收藏
		UserService userservice=(UserService) BeanFactory.getBean("UserService");
		List<Car> myCollection=userservice.getCarsByUserId(user.getUid());
		request.setAttribute("myCollection", myCollection);
		
		return "/jsp2/usercenter.jsp";
	}

	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		password = MD5Utils.md5(password);
		UserService service = new UserServiceImpl();
		User user = service.getByUsernameAndPwd(username, password);
		if (user == null) {
			request.setAttribute("msg", "用户名密码不匹配");
			return "/jsp2/login.jsp";
		} else {
			if (user.getState() == 0) {
				request.setAttribute("msg", "用户未激活");
				return "/jsp2/login.jsp";
			}
		}
		request.getSession().setAttribute("user", user);
		response.sendRedirect(request.getContextPath() + "/");
		return null;
	}
	public String collectCar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//检查是否登录
				User user=(User) request.getSession().getAttribute("user");
				if (user==null) {
					request.setAttribute("msg", "亲 ，还没有登录，不能收藏哦！");
					return "/jsp/msg.jsp";
				}
		String car_id = request.getParameter("car_id");
		
		UserService service = new UserServiceImpl();
		String result = service.collectCar(user.getUid(), car_id);
		Message message=new Message(result);
		JSONObject jsonObject=JSONObject.fromObject(message);
		String json=jsonObject.toString();
		//3.写回去
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
		return null;
	}
	/**
	 * 取消收藏
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public String cancelCollectCar(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//检查是否登录
		User user=(User) request.getSession().getAttribute("user");
		if (user==null) {
			request.setAttribute("msg", "亲 ，还没有登录哦！");
			return "/jsp/msg.jsp";
		}
		String car_id = request.getParameter("car_id");
		
		UserService service = new UserServiceImpl();
		String result = service.cancelCollectCar(user.getUid(), car_id);
		Message message=new Message(result);
		JSONObject jsonObject=JSONObject.fromObject(message);
		String json=jsonObject.toString();
		//3.写回去
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
		return null;
	}
	public String isCarCollected(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//检查是否登录
		User user=(User) request.getSession().getAttribute("user");
		if (user==null) {
			request.setAttribute("msg", "亲 ，还没有登录！");
			return "/jsp/msg.jsp";
		}
		String car_id = request.getParameter("car_id");
		
		UserService service = new UserServiceImpl();
		String result = service.isCarCollected(user.getUid(), car_id);
		Message message=new Message(result);
		JSONObject jsonObject=JSONObject.fromObject(message);
		String json=jsonObject.toString();
		//3.写回去
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().println(json);
		return null;
	}

	

	public String logout(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// delete session
			request.getSession().invalidate();
		// redirect
			response.sendRedirect(request.getContextPath());
		// do autologin
		return null;
	}
}
