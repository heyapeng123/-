package cs.core.service;

import cs.common.utils.Page;
import cs.core.db.po.CustomerInfo;
import cs.core.db.po.VisitInfo;

public interface VisitService {
	// 查询客户列表
	public Page<VisitInfo> findVisitList(Integer page, Integer rows, 
                                        String custName,String custSource,
                                        String custIndustry,String custLevel);
  //删除
   public int visitDel(String id);

   //新增
   public int createVisit(VisitInfo visit); 
   
// 通过id查询客户
	public VisitInfo getVisitById(Integer id);
	// 更新客户信息
	public int updateVisit(VisitInfo visit);
	
	

}
