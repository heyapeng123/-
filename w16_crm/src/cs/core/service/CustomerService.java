package cs.core.service;

import java.util.List;

import cs.common.utils.Page;
import cs.core.db.po.CustomerInfo;

public interface CustomerService {
	// 查询客户列表
	public Page<CustomerInfo> findCustomerList(Integer page, Integer rows, 
                                        String custName,String custSource,
                                        String custIndustry,String custLevel);
	
	public List<CustomerInfo> selectAllCustomer(Integer a);
  //删除
   public int customDel(String id);

   //新增
   public int createCustomer(CustomerInfo customer); 
   
// 通过id查询客户
	public CustomerInfo getCustomerById(Integer id);
	// 更新客户信息
	public int updateCustomer(CustomerInfo customer);
	
	

}
