package cs.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cs.core.dao.UserDao;
import cs.core.db.po.UserInfo;
import cs.core.service.UserService;

//1、说明当前类  是Service
//2、c类调用  当前类时，使用 userService的对象名
@Service("userService")

//开启spring事务
@Transactional
public class UserServiceImpl implements UserService {

//	利用注解，自动  匹配 dao类
	@Autowired
	private UserDao userDao;
	
	
	// 调用dao 查询用户
	public UserInfo findUserS(String user_code, String user_password) {
		// TODO Auto-generated method stub
		
//		private UserDao userDao = new UserDaoImpl;
		UserInfo u = this.userDao.findUser(user_code, user_password);
		
		return u;
	}


	@Override
	public List<UserInfo> findUser() {
		// TODO Auto-generated method stub
		return userDao.findUsers();
	}

}
