package cs.core.dao;
import java.util.List;

import cs.core.db.po.CustomerInfo;
import cs.core.db.po.VisitInfo;
/**
 * Customer接口
 */
public interface VisitDao {
    // 客户列表
	public List<VisitInfo> selectVisitList(VisitInfo visit);
	// 客户数
	public Integer selectVisitListCount(VisitInfo visit);
	
	// 创建客户
	public int createVisit(VisitInfo visit);
	// 通过id查询客户
	public VisitInfo getVisitById(Integer id);
	// 更新客户信息
	public int updateVisit(VisitInfo visit);
	// 删除客户
	public int deleteVisit (Integer id);

}
