package cs.core.service;

import java.util.List;

import cs.core.db.po.UserInfo;


//service功能 就是调用dao
public interface UserService {
	public UserInfo findUserS( String user_code, String user_password);
	
	public List<UserInfo> findUser();
}
