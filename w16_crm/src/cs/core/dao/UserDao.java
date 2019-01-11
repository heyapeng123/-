package cs.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cs.core.db.po.UserInfo;

/*
 * 不写接口的实现类：
 * 1、将从 service接受到的 2个_的变量，赋值给 @，并传值给 xml中的sql语句
 * service直接 调用 interface UserDao
 * dao要调用xml中的 sql
 * 2、利用applicationContext.xml中的MapperScannerConfigurer，自动匹配 方法名与sql，生成dao的对象
 * */
public interface UserDao {
	public UserInfo findUser( @Param("usercode") String user_code,
							@Param("userpassword") String user_password);

	public List<UserInfo> findUsers();
}
