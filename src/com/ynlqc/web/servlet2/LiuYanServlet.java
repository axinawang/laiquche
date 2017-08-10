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
import com.ynlqc.domain.LiuYan;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;
import com.ynlqc.myconverter.MyConverter;
import com.ynlqc.service.LiuYanService;
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
public class LiuYanServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;

	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception{
		LiuYanService service=(LiuYanService) BeanFactory.getBean("LiuYanService");
		LiuYan bean = new LiuYan();
		
		BeanUtils.populate(bean, request.getParameterMap());
		
		bean.setMessage_id(UUIDUtils.getId());
		bean.setCommitTime(new Date());
		
		service.add(bean);
		request.setAttribute("msg", "留言成功，稍后客服会与您联系！");
		return "/jsp/msg.jsp";
	}

	
}
