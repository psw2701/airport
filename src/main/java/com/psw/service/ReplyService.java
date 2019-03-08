package com.psw.service;

import java.util.List;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.ReplyVO;

public interface ReplyService {
	public List<ReplyVO> list(int bno);

	public void create(ReplyVO vo);

	public void update(ReplyVO vo);

	public void delete(int no);
	
	public List<ReplyVO> listPage(Criteria cri, int bno);

	public int totalCount(int bno);
	
	public ReplyVO selectByRno(int no);
	
	public ReplyVO selectByBno(int no);
}
