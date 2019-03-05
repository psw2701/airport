package com.psw.service;

import java.util.List;


import com.psw.domain.Criteria;
import com.psw.domain.NoticeVO;
import com.psw.domain.SearchCriteria;

public interface NoticeService {
	public void regist(NoticeVO vo);

	public NoticeVO read(int no);

	public void modify(NoticeVO vo);

	public void modifyFile(NoticeVO vo, String[] delFiles, List<String> addImages);

	public void remove(int no);

	public List<NoticeVO> listAll();

	public List<NoticeVO> listCriteria(Criteria cri);

	public void addCnt(int no);

	public int totalCount();

	public List<NoticeVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void delImg(int no);
	
	public List<NoticeVO> notice(SearchCriteria cri);
}
