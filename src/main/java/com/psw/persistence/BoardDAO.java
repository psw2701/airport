package com.psw.persistence;

import java.util.List;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.SearchCriteria;

public interface BoardDAO {
	public void insert(BoardVO vo);

	public BoardVO read(int no);

	public void update(BoardVO vo);

	public void delete(int no);

	public List<BoardVO> listAll();

	/*------------------------------------------------*/

	public List<BoardVO> listPage(int page);

	public List<BoardVO> listCriteria(Criteria cri);

	/*------------------------------------------------*/
	public void addCnt(int no);

	public int totalCount();

	/*------------------------------------------------*/
	public List<BoardVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void updateReplyCnt(int bno, int amount);

	public void addAttach(String fullname);

	public List<String> getAttach(int no);

	public void delImg(int bno);

	public void deleteAttachByFullName(int bno, String fullname);

	public void addAttachByBno(String fullname, int bno);

	/* public BoardVO selectById(BoardV) */
	
	public List<BoardVO> listSearchMyBoard (SearchCriteria cri, String cusCode);
	
	public int searchTotalCountMy(SearchCriteria cri,String cusCode);
}
