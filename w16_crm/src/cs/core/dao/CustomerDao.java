package cs.core.dao;
import java.util.List;

import cs.core.db.po.CustomerInfo;
/**
 * Customer接口
 */
public interface CustomerDao {
    // 客户列表
	public List<CustomerInfo> selectCustomerList(CustomerInfo customer);
	// 客户数
	public Integer selectCustomerListCount(CustomerInfo customer);
	
	// 创建客户
	public int createCustomer(CustomerInfo customer);
	// 通过id查询客户
	public CustomerInfo getCustomerById(Integer id);
	// 更新客户信息
	public int updateCustomer(CustomerInfo customer);
	// 删除客户
	public int deleteCustomer (Integer id);
	
	
	public List<CustomerInfo> selectAllCustomer(Integer a);

}
