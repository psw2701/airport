package com.psw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.SearchCriteria;
import com.psw.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO dao;

	@Override
	@Transactional
	public void regist(BoardVO vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);

		List<String> files = vo.getFiles();

		if (files == null || files.size() == 0)
			return;

		for (String fullname : files) {
			dao.addAttach(fullname);
		}
	}

	@Override
	@Transactional(isolation = Isolation.READ_COMMITTED)
	public BoardVO read(int no) {
		// TODO Auto-generated method stub
		BoardVO vo = dao.read(no);
		vo.setFiles(dao.getAttach(no));
		return vo;
	}

	@Override
	public void modify(BoardVO vo /* List<String> delFiles */) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void remove(int no) {
		// TODO Auto-generated method stub
		dao.delImg(no);
		dao.delete(no);
	}

	@Override
	public List<BoardVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public void addCnt(int no) {
		// TODO Auto-generated method stub
		dao.addCnt(no);

	}

	@Override
	public int totalCount() {
		// TODO Auto-generated method stub
		return dao.totalCount();
	}

	@Override
	public List<BoardVO> listSearch(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return dao.listSearch(cri);
	}

	@Override
	public int searchTotalCount(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return dao.searchTotalCount(cri);
	}

	@Override
	public void delImg(int no) {
		// TODO Auto-generated method stub
		dao.delImg(no);
	}

	@Override
	@Transactional
	public void modifyFile(BoardVO vo, String[] delFiles, List<String> addImages) {
		// TODO Auto-generated method stub
		if (delFiles != null) {
			for (String file : delFiles) {
				dao.deleteAttachByFullName(vo.getNo(), file);
			}
		}

		for (String file : addImages) {
			dao.addAttachByBno(file, vo.getNo());
		}
		dao.update(vo);

	}

	@Override
	public List<BoardVO> listSearchMyBoard(SearchCriteria cri, String cusCode) {
		// TODO Auto-generated method stub
		return dao.listSearchMyBoard(cri, cusCode);
	}

	@Override
	public int searchTotalCountMy(SearchCriteria cri, String cusCode) {
		// TODO Auto-generated method stub
		return dao.searchTotalCountMy(cri, cusCode);
	}

}
