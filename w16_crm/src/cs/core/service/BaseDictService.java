package cs.core.service;

import java.util.List;

import cs.core.db.po.BaseDictInfo;

public interface BaseDictService {

 public	List<BaseDictInfo> selectBaseDictByTypeCode(String typeCode);

	

}
