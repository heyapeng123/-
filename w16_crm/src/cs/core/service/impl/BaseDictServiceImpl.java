package cs.core.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cs.core.dao.BaseDictDao;
import cs.core.db.po.BaseDictInfo;
import cs.core.service.BaseDictService;



//
@Service("baseDictService")
public class BaseDictServiceImpl implements BaseDictService {
	
	@Autowired
	private BaseDictDao baseDictDao ;
	
	@Override
	public List<BaseDictInfo> selectBaseDictByTypeCode(String typeCode){
		
		 return baseDictDao.selectBaseDictByTypeCode(typeCode);
	}

}
