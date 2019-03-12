package com.psw.service;

import java.util.List;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO vo);

	public BoardVO read(int no);

	public void modify(BoardVO vo);

	public void modifyFile(BoardVO vo, String[] delFiles, List<String> addImages);

	public void remove(int no);

	public List<BoardVO> listAll();

	public List<BoardVO> listCriteria(Criteria cri);

	public void addCnt(int no);

	public int totalCount();

	public List<BoardVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void delImg(int no);
	
	public List<BoardVO> listSearchMyBoard (SearchCriteria cri, String cusCode);

	public int searchTotalCountMy(SearchCriteria cri, String cusCode);
	
	public void updateProgress(int no);
}
