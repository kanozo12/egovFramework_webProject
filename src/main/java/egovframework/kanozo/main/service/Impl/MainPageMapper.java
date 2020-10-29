package egovframework.kanozo.main.service.Impl;

import java.util.List;

import egovframework.kanozo.main.cmm.FreeBoardSampleVO;
import egovframework.rte.psl.dataaccess.mapper.Mapper;

@Mapper("mainPageMapper")
public interface MainPageMapper {
	List<FreeBoardSampleVO> freeList();
}
