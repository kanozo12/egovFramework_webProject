package egovframework.kanozo.main.service;

import java.util.List;

import egovframework.kanozo.main.cmm.FreeBoardSampleVO;
import egovframework.kanozo.main.cmm.NoticeBoardSampleVO;
import egovframework.kanozo.main.cmm.SlideDataVO;


public interface MainPageService {
	public List<NoticeBoardSampleVO> noticeList();

	public List<FreeBoardSampleVO> freeBoardList();

	public List<SlideDataVO> getSlideItem();
}
