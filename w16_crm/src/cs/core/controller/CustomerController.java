package cs.core.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cs.common.utils.Page;
import cs.core.db.po.BaseDictInfo;
import cs.core.db.po.CustomerInfo;
import cs.core.service.BaseDictService;
import cs.core.service.CustomerService;
/**
 * 客户管理控制器类
 */
@Controller
public class CustomerController {
	// 依赖注入
	@Autowired
	private CustomerService customerService;
	 
	@Autowired
	private BaseDictService baseDictService ;

	
	
	
	/**
	 *  客户列表
	 */
	@RequestMapping(value = "/customer/list.action")
	public String list(   @RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String custName, String custSource, String custIndustry,
			String custLevel, Model model  ) {
		// 条件查询所有客户
		Page<CustomerInfo> customers = customerService
				.findCustomerList(page, rows, custName, 
                                        custSource, custIndustry,custLevel);
		model.addAttribute("page", customers);
		
		List<BaseDictInfo> fromType = baseDictService.selectBaseDictByTypeCode("客户信息来源");
		model.addAttribute("fromType",fromType);
		
		List<BaseDictInfo> industryType = baseDictService.selectBaseDictByTypeCode("客户行业");
		model.addAttribute("industryType",industryType);
		
		List<BaseDictInfo> levelType = baseDictService.selectBaseDictByTypeCode("客户级别");
		model.addAttribute("levelType",levelType);
		
		// 添加参数
		
		model.addAttribute("custName", custName);
//String cn = new String(custName.getBytes("ISO-8859-1"), "UTF-8");
System.out.print("========custName========"+custName);
		model.addAttribute("custSource", custSource);
		model.addAttribute("custIndustry", custIndustry);
		model.addAttribute("custLevel", custLevel);
		return "customer";
	}
	
	//删除客户
	
	@RequestMapping("/customer/delete.action")
     @ResponseBody
	public String customeDel(String id){
		 int rows = customerService.customDel(id);
		 if(rows>0){
			 return "OK";
		 }
		 else{
			 return "ERR";
		 }
	}
	
	//新增
	
	@RequestMapping("/customer/create.action")
	@ResponseBody
	public String createCustomer(String cust_name,String cust_source,String cust_industry,
			String cust_level,String cust_linkman,String cust_phone,String cust_mobile,
			String cust_zipcode,String cust_address){
		
		CustomerInfo cus=new CustomerInfo();
		cus.setCust_name(cust_name);
		cus.setCust_source(cust_source);
		cus.setCust_industry(cust_industry);
		cus.setCust_level(cust_level);
		cus.setCust_linkman(cust_linkman);
		cus.setCust_phone(cust_phone);
		cus.setCust_mobile(cust_mobile);
		cus.setCust_zipcode(cust_zipcode);
		cus.setCust_address(cust_address);
		int rows = customerService.createCustomer(cus);
		
		if(rows>0){
			 return "OK";
		 }
		 else{
			 return "ERR";
		 }
	}
//根据id获取
	@RequestMapping("/customer/getCustomerById.action")
	@ResponseBody
	
	public CustomerInfo getCustomerById(Integer id){
		
		CustomerInfo list = customerService.getCustomerById(id);
		return list;
		
	}
	
	
	//根据id获取
		@RequestMapping("/customer/update.action")
		@ResponseBody
		
		public String  updateCustomer(Integer cust_id,String cust_name,String cust_source,String cust_industry,
				String cust_level,String cust_linkman,String cust_phone,String cust_mobile,
				String cust_zipcode,String cust_address){
			

			CustomerInfo cus=new CustomerInfo();
			cus.setCust_id(cust_id);
			cus.setCust_name(cust_name);
			cus.setCust_source(cust_source);
			cus.setCust_industry(cust_industry);
			cus.setCust_level(cust_level);
			cus.setCust_linkman(cust_linkman);
			cus.setCust_phone(cust_phone);
			cus.setCust_mobile(cust_mobile);
			cus.setCust_zipcode(cust_zipcode);
			cus.setCust_address(cust_address);
			
			int rows = customerService.updateCustomer(cus);
			
			if(rows>0){
				 return "OK";
			 }
			 else{
				 return "ERR";
			 }
			
		}

	

}
