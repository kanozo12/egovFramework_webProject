package egovframework.kanozo.main.service.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.kanozo.main.cmm.FreeBoardSampleVO;

@Repository("mainPageDAO")
public class MainPageDAO extends EgovComAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<FreeBoardSampleVO> freeList() {
		return (List<FreeBoardSampleVO>)(Object)selectList("mainPageDAO.getFreeBoard");
	}
}
