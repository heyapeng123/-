package cs.core.service.impl;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cs.common.utils.Page;
import cs.core.dao.CustomerDao;
import cs.core.db.po.CustomerInfo;
import cs.core.service.CustomerService;
/**
 * 客户管理
 */
@Service("customerService")
@Transactional
public class CustomerServiceImpl implements CustomerService {
	// 声明DAO属性并注入
	@Autowired
	private CustomerDao customerDao;
	
	// 客户列表
	public Page<CustomerInfo> findCustomerList(Integer page, Integer rows, 
			String custName,  String custSource,
			String custIndustry, String custLevel) {
		// 创建客户对象
		CustomerInfo customer = new CustomerInfo();
		// 判断客户名称
		if(StringUtils.isNotBlank(custName)){
			customer.setCust_name(custName);
		}
		// 判断客户信息来源
		if(StringUtils.isNotBlank(custSource)){
			customer.setCust_source(custSource);
		}
		// 判断客户所属行业
		if(StringUtils.isNotBlank(custIndustry)){
			customer.setCust_industry(custIndustry);
		}
		// 判断客户级别
		if(StringUtils.isNotBlank(custLevel)){
			customer.setCust_level(custLevel);
		}
		
		
		// 当前页
		customer.setStart((page-1) * rows) ;
		// 每页数
		customer.setRows(rows);
		
		// 查询客户列表
		List<CustomerInfo> customers = 
                            customerDao.selectCustomerList(customer);
		// 查询客户列表总记录数
		Integer count = customerDao.selectCustomerListCount(customer);
		
		// 创建Page返回对象
//		Page<Customer> result = new Page<>();
		Page<CustomerInfo> result = new Page<CustomerInfo>();
		result.setPage(page);
		result.setRows(customers);
		result.setSize(rows);
		result.setTotal(count);
		
		return result;
	}
//删除
	@Override
	public int customDel(String id) {
		// TODO Auto-generated method stub
		return customerDao.deleteCustomer(Integer.parseInt(id));
	}
//新增
	@Override
	public int createCustomer(CustomerInfo customer) {
		// TODO Auto-generated method stub
		return customerDao.createCustomer(customer);
	}
	// 通过id查询客户
	@Override
	public CustomerInfo getCustomerById(Integer id) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerById(id);
	}
	
	// 更新客户信息
	@Override
	public int updateCustomer(CustomerInfo customer) {
		// TODO Auto-generated method stub
		return customerDao.updateCustomer(customer);
	}
	@Override
	public List<CustomerInfo> selectAllCustomer(Integer a) {
		// TODO Auto-generated method stub
		return customerDao.selectAllCustomer(a);
	}
	
	
	


	
}
