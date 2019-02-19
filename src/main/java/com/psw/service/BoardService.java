package com.psw.service;

import java.util.List;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.SearchCriteria;

public interface BoardService {
	public void regist(BoardVO vo);

	public BoardVO read(int bno);

	public void modify(BoardVO vo);

	public void modifyFile(BoardVO vo, String[] delFiles, List<String> addImages);

	public void remove(int bno);

	public List<BoardVO> listAll();

	public List<BoardVO> listCriteria(Criteria cri);

	public void addCnt(int bno);

	public int totalCount();

	public List<BoardVO> listSearch(SearchCriteria cri);

	public int searchTotalCount(SearchCriteria cri);

	public void delImg(int bno);

}
