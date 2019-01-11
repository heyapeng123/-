package cs.core.dao;

import java.util.List;

import cs.core.db.po.BaseDictInfo;

public interface BaseDictDao {
	//根据字典种类名称查询数据
	//方法名必须与xml中sql语句的id一样
	//方法参数名称必须与xml中sql的动态参数名一样
	
	public List<BaseDictInfo> selectBaseDictByTypeCode(String typeCode);

	

}
