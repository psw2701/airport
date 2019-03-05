package com.psw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.psw.domain.Criteria;
import com.psw.domain.NoticeVO;
import com.psw.domain.SearchCriteria;
import com.psw.persistence.NoticeDAO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeDAO dao;

	@Override
	@Transactional
	public void regist(NoticeVO vo) {
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
	public NoticeVO read(int no) {
		// TODO Auto-generated method stub
		NoticeVO vo = dao.read(no);
		vo.setFiles(dao.getAttach(no));
		return vo;
	}

	@Override
	public void modify(NoticeVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void modifyFile(NoticeVO vo, String[] delFiles, List<String> addImages) {
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
	public void remove(int no) {
		// TODO Auto-generated method stub
		dao.delImg(no);
		dao.delete(no);
	}

	@Override
	public List<NoticeVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<NoticeVO> listCriteria(Criteria cri) {
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
	public List<NoticeVO> listSearch(SearchCriteria cri) {
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
	public List<NoticeVO> notice(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return dao.notice(cri);
	}

}
