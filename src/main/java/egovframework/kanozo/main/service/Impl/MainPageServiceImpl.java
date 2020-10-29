package egovframework.kanozo.main.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.kanozo.main.cmm.FreeBoardSampleVO;
import egovframework.kanozo.main.cmm.NoticeBoardSampleVO;
import egovframework.kanozo.main.cmm.SlideDataVO;
import egovframework.kanozo.main.service.MainPageService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("mainpageService")
public class MainPageServiceImpl extends EgovAbstractServiceImpl implements MainPageService {

	@Resource(name = "mainPageMapper")
	private MainPageDAO dao;

	@Override
	public List<NoticeBoardSampleVO> noticeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FreeBoardSampleVO> freeBoardList() {
		return dao.freeList();
	}

	@Override
	public List<SlideDataVO> getSlideItem() {
		// TODO Auto-generated method stub
		return null;
	}

}
