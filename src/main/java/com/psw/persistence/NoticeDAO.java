package com.psw.persistence;

import java.util.List;


import com.psw.domain.Criteria;
import com.psw.domain.NoticeVO;
import com.psw.domain.SearchCriteria;

public interface NoticeDAO {
	public void insert(NoticeVO vo);

	public NoticeVO read(int no);

	public void update(NoticeVO vo);

	public void delete(int no);

	public List<NoticeVO> listAll();

	/*------------------------------------------------*/

	public List<NoticeVO> listPage(int page);

	public List<NoticeVO> listCriteria(Criteria cri);

	/*------------------------------------------------*/
	public void addCnt(int no);

	public int totalCount();

	/*------------------------------------------------*/
	public List<NoticeVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void updateReplyCnt(int no, int amount);

	public void addAttach(String fullname);

	public List<String> getAttach(int no);

	public void delImg(int no);

	public void deleteAttachByFullName(int no, String fullname);

	public void addAttachByBno(String fullname, int no);
	
	public List<NoticeVO> notice(SearchCriteria cri);

}
