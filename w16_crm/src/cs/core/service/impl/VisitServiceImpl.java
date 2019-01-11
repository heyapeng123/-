package cs.core.service.impl;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cs.common.utils.Page;
import cs.core.dao.CustomerDao;
import cs.core.dao.VisitDao;
import cs.core.db.po.CustomerInfo;
import cs.core.db.po.VisitInfo;
import cs.core.service.CustomerService;
import cs.core.service.VisitService;
/**
 * 客户管理
 */
@Service("visitService")
@Transactional
public class VisitServiceImpl implements VisitService {
	// 声明DAO属性并注入
	@Autowired
	private VisitDao visitDao;
	
	// 客户列表
	public Page<VisitInfo> findVisitList(Integer page, Integer rows, 
			String custName,  String custSource,
			String custIndustry, String custLevel) {
		// 创建客户对象
		VisitInfo visit = new VisitInfo();
		// 判断客户名称
		if(StringUtils.isNotBlank(custName)){
			visit.setCustomer_name(custName);
		}
		// 判断客户信息来源
		if(StringUtils.isNotBlank(custSource)){
			visit.setCust_source(custSource);
		}
		// 判断客户所属行业
		if(StringUtils.isNotBlank(custIndustry)){
			visit.setCust_industry(custIndustry);
		}
		// 判断客户级别
		if(StringUtils.isNotBlank(custLevel)){
			visit.setCust_level(custLevel);
		}
		
		
		// 当前页
		visit.setStart((page-1) * rows) ;
		// 每页数
		visit.setRows(rows);
		
		// 查询客户列表
		List<VisitInfo> visits = 
				visitDao.selectVisitList(visit);
	
		SimpleDateFormat time=new SimpleDateFormat("yyyy-MM-dd"); 
		List<VisitInfo> V=new ArrayList<VisitInfo>();
		for(VisitInfo ss : visits){
			VisitInfo vis=new VisitInfo();
			vis.setVisit_id(ss.getVisit_id());
			vis.setCustomer_id(ss.getCustomer_id());
			vis.setCustomer_name(ss.getCustomer_name());
			vis.setUser_id(ss.getUser_id());
			vis.setUser_name(ss.getUser_name());
			vis.setVisit_type(ss.getVisit_type());
			vis.setVisit_place(ss.getVisit_place());
			try {
				vis.setVisit_time(time.format(time.parse(ss.getVisit_time())));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			vis.setRemark(ss.getRemark());
			vis.setCust_source(ss.getCust_source());
			vis.setCust_level(ss.getCust_level());
			vis.setCust_industry(ss.getCust_industry());
			vis.setStart(ss.getStart());
			vis.setRows(ss.getRows());
			V.add(vis);
		}
		
		
		// 查询客户列表总记录数
		Integer count = visitDao.selectVisitListCount(visit);
		
		// 创建Page返回对象
//		Page<Customer> result = new Page<>();
		Page<VisitInfo> result = new Page<VisitInfo>();
		result.setPage(page);
		result.setRows(V);
		result.setSize(rows);
		result.setTotal(count);
		
		return result;
	}
//删除
	@Override
	public int visitDel(String id) {
		// TODO Auto-generated method stub
		return visitDao.deleteVisit(Integer.parseInt(id));
	}
//新增
	@Override
	public int createVisit(VisitInfo visit) {
		// TODO Auto-generated method stub
		return visitDao.createVisit(visit);
	}
	// 通过id查询客户
	@Override
	public VisitInfo getVisitById(Integer id) {
		// TODO Auto-generated method stub
		return visitDao.getVisitById(id);
	}
	
	// 更新客户信息
	@Override
	public int updateVisit(VisitInfo visit) {
		// TODO Auto-generated method stub
		return visitDao.updateVisit(visit);
	}
	
	
	


	
}
