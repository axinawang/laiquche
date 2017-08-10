package com.ynlqc.dao.impl;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.ynlqc.dao.AppointmentDao;
import com.ynlqc.dao.LiuYanDao;
import com.ynlqc.dao.UserDao;
import com.ynlqc.domain.Admin;
import com.ynlqc.domain.Appointment;
import com.ynlqc.domain.Car;
import com.ynlqc.domain.LiuYan;
import com.ynlqc.domain.Shop;
import com.ynlqc.domain.User;
import com.ynlqc.utils.DataSourceUtils;

public class LiuYanDaoImpl implements LiuYanDao {

	

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.AppointmentDao#findAll()
	 */
	@Override
	public List<LiuYan> findAll() throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from message order by commitTime desc";
		List<LiuYan> beans=qr.query(sql, new BeanListHandler<>(LiuYan.class));
		
		return beans;
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.LiuYanDao#add(com.ynlqc.domain.LiuYan)
	 */
	@Override
	public void add(LiuYan bean) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());

		String sql="insert into message (message_id,name,tel,address,"
				+ "email,cartype,content,commitTime) values(?,?,?,?,?,?,?,?)";
		String commitTime=null;
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		commitTime=sf.format(bean.getCommitTime());

		qr.update(sql,bean.getMessage_id(),bean.getName(),bean.getTel(),bean.getAddress(),
				bean.getEmail(),bean.getCartype(),bean.getContent(),
				commitTime
				);
		
	}

	/* (non-Javadoc)
	 * @see com.ynlqc.dao.LiuYanDao#getById(java.lang.String)
	 */
	@Override
	public LiuYan getById(String message_id) throws Exception {
		QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());
		String sql = "select * from message where message_id=?";
		LiuYan message=qr.query(sql, new BeanHandler<>(LiuYan.class),message_id);
		
		return message;
	}

	
	
	/* (non-Javadoc)
	 * @see com.ynlqc.dao.LiuYanDao#update(com.ynlqc.domain.LiuYan)
	 */
	@Override
	public void update(LiuYan liuYan) throws Exception {
		QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
		String sql="update message set remark = ?,state = ? where message_id =? ";
		qr.update(sql, liuYan.getRemark(),liuYan.getState(),liuYan.getMessage_id());
		
	}
	
	
	public static void main(String[] args) {
		String message_id="1";
		LiuYanDao dao=new LiuYanDaoImpl();
		
		try {
			//System.out.println(dao.getById(message_id));
			LiuYan bean=null;
			List<LiuYan> beans=dao.findAll();
			for (LiuYan liuYan : beans) {
				System.out.println(liuYan);
			}
			/*bean=dao.getById(message_id);
			bean.setRemark("xiugaile");
			bean.setState(1);
			dao.update(bean);*/
			bean=new LiuYan();
			bean.setMessage_id("99");
			bean.setCommitTime(new Date());
			dao.add(bean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

}


