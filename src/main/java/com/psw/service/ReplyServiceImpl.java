package com.psw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.psw.domain.Criteria;
import com.psw.domain.ReplyVO;
import com.psw.persistence.BoardDAO;
import com.psw.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDAO dao;

	@Autowired
	private BoardDAO boardDao;

	@Override
	public List<ReplyVO> list(int bno) {
		// TODO Auto-generated method stub
		return dao.list(bno);
	}

	@Override
	@Transactional
	public void create(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.create(vo);
		boardDao.updateReplyCnt(vo.getbNo().getNo(), 1);
		boardDao.updateProgress(vo.getbNo().getNo());
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	@Transactional
	public void delete(int no) {
		// TODO Auto-generated method stub
		// rno를 이용하여 bno값을 알아옴
		ReplyVO vo = dao.selectByRno(no);
		dao.delete(no);

		boardDao.updateReplyCnt(vo.getNo(), -1);
	}

	@Override
	public List<ReplyVO> listPage(Criteria cri, int bno) {
		// TODO Auto-generated method stub
		return dao.listPage(cri, bno);
	}

	@Override
	public int totalCount(int bno) {
		// TODO Auto-generated method stub
		return dao.totalCount(bno);
	}

	@Override
	public ReplyVO selectByRno(int no) {
		// TODO Auto-generated method stub
		return dao.selectByRno(no);
	}

	@Override
	public ReplyVO selectByBno(int no) {
		// TODO Auto-generated method stub
		return dao.selectByBno(no);
	}

	@Override
	public void deleteByBoardNo(int bno) {
		// TODO Auto-generated method stub
		dao.deleteByBoardNo(bno);
	}

}
