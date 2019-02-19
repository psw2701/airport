package com.psw.persistence;

import java.util.List;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.SearchCriteria;

public interface BoardDAO {
	public void insert(BoardVO vo);

	public BoardVO read(int bno);

	public void update(BoardVO vo);

	public void delete(int bno);

	public List<BoardVO> listAll();

	/*------------------------------------------------*/

	public List<BoardVO> listPage(int page);

	public List<BoardVO> listCriteria(Criteria cri);

	/*------------------------------------------------*/
	public void addCnt(int bno);

	public int totalCount();

	/*------------------------------------------------*/
	public List<BoardVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void updateReplyCnt(int bno, int amount);

	public void addAttach(String fullname);

	public List<String> getAttach(int bno);

	public void delImg(int bno);

	public void deleteAttachByFullName(int bno, String fullname);

	public void addAttachByBno(String fullname, int bno);
}
