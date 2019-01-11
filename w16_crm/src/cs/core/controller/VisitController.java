package cs.core.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import cs.core.db.po.UserInfo;
import cs.core.db.po.VisitInfo;
import cs.core.service.BaseDictService;
import cs.core.service.CustomerService;
import cs.core.service.UserService;
import cs.core.service.VisitService;
/**
 * 客户管理控制器类
 */
@Controller
public class VisitController {
	// 依赖注入
	@Autowired
	private VisitService visitService;
	 
	@Autowired
	private BaseDictService baseDictService ;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private UserService userService;
	
	 

	
	
	
	/**
	 *  客户列表
	 */
	@RequestMapping(value = "/visit/list.action")
	public String list(   @RequestParam(defaultValue="1")Integer page,
			@RequestParam(defaultValue="10")Integer rows, 
			String custName, String custSource, String custIndustry,
			String custLevel, Model model ,Integer a ) {
		// 条件查询所有客户
		
		Page<VisitInfo> visits= visitService
				.findVisitList(page, rows, custName, 
                        custSource, custIndustry,custLevel);
		
		
		
		model.addAttribute("page", visits);
		
		List<UserInfo> user=userService.findUser();
		model.addAttribute("user", user);
		
		List<CustomerInfo> cus=customerService.selectAllCustomer(a);
		model.addAttribute("cus",cus);
		
		List<BaseDictInfo> fromType = baseDictService.selectBaseDictByTypeCode("客户信息来源");
		model.addAttribute("fromType",fromType);
		
		List<BaseDictInfo> industryType = baseDictService.selectBaseDictByTypeCode("客户行业");
		model.addAttribute("industryType",industryType);
		
		List<BaseDictInfo> levelType = baseDictService.selectBaseDictByTypeCode("客户级别");
		model.addAttribute("levelType",levelType);
		
		// 添加参数
		
		//model.addAttribute("custName", custName);
//String cn = new String(custName.getBytes("ISO-8859-1"), "UTF-8");
System.out.print("========custName========"+custName);
		model.addAttribute("custSource", custSource);
		model.addAttribute("custIndustry", custIndustry);
		model.addAttribute("custLevel", custLevel);
		return "visit";
	}
	
	
	
	
	
	@RequestMapping("visit/getCustById.action")
	@ResponseBody
	public List<CustomerInfo> custall(Integer a){
		List<CustomerInfo> cus=customerService.selectAllCustomer(a);
		return  cus;
		
	}
	
	
	
	//删除客户
	
	@RequestMapping("/visit/delete.action")
     @ResponseBody
	public String visitDel(String id){
		 int rows = visitService.visitDel(id);
		 if(rows>0){
			 return "OK";
		 }
		 else{
			 return "ERR";
		 }
	}
	
	//新增
	
	@RequestMapping("/visit/create.action")
	@ResponseBody
	public String createVisit(String cust_name,String user_name,String visit_type,
			String visit_place,String visit_time,String remark,Integer user_id,Integer cust_Id){
		
		VisitInfo cus=new VisitInfo();
	 
		cus.setCustomer_name(cust_name);
		cus.setCustomer_id(cust_Id);
		cus.setUser_name(user_name);
		cus.setUser_id(user_id);
		cus.setVisit_type(visit_type);
		cus.setVisit_place(visit_place);
		cus.setVisit_time(visit_time);
		cus.setRemark(remark);
		int rows = visitService.createVisit(cus);
		
		if(rows>0){
			 return "OK";
		 }
		 else{
			 return "ERR";
		 }
	}
//根据id获取
	@RequestMapping("/visit/getVisitById.action")
	@ResponseBody
	
	public VisitInfo getVisitById(Integer id){
		
		VisitInfo list = visitService.getVisitById(id);
		VisitInfo v=new VisitInfo();
		v.setVisit_id(list.getVisit_id());
		v.setCustomer_id(list.getCustomer_id());
		v.setCustomer_name(list.getCustomer_name());
		v.setUser_id(list.getUser_id());
		v.setUser_name(list.getUser_name());
		v.setVisit_type(list.getVisit_type());
		v.setVisit_place(list.getVisit_place());
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		try {
			v.setVisit_time(df.format(df.parse(list.getVisit_time())));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		v.setRemark(list.getRemark());
		
		return v;
		
	}
	
	
	//根据id获取
		@RequestMapping("/visit/update.action")
		@ResponseBody
		
		public String  updateVisit(Integer visit_id,String cust_name,String user_name,String visit_type,
				String visit_place,String visit_time,String remark,Integer user_id,Integer cust_Id){
			

			VisitInfo cus=new VisitInfo();
			
			cus.setVisit_id(visit_id);
			cus.setCustomer_name(cust_name);
			cus.setCustomer_id(cust_Id);
			cus.setUser_name(user_name);
			cus.setUser_id(user_id);
			cus.setVisit_type(visit_type);
			cus.setVisit_place(visit_place);
			cus.setVisit_time(visit_time);
			cus.setRemark(remark);
			
			
			int rows = visitService.updateVisit(cus);
			
			if(rows>0){
				 return "OK";
			 }
			 else{
				 return "ERR";
			 }
			
		}

	

}
