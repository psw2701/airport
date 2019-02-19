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
		boardDao.updateReplyCnt(vo.getNo(), 1);
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	@Transactional
	public void delete(int rno) {
		// TODO Auto-generated method stub
		// rno를 이용하여 bno값을 알아옴
		ReplyVO vo = dao.selectByRno(rno);

		dao.delete(rno);

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

}
