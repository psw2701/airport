package com.psw.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psw.domain.BoardVO;
import com.psw.domain.Criteria;
import com.psw.domain.NoticeVO;
import com.psw.domain.SearchCriteria;

@Repository
public class NoticeDaoImpl implements NoticeDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.psw.mapper.NoticeMapper";

	@Override
	public void insert(NoticeVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public NoticeVO read(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".read", no);
	}

	@Override
	public void update(NoticeVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", no);
	}

	@Override
	public List<NoticeVO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll");
	}

	@Override
	public List<NoticeVO> listPage(int page) {
		// TODO Auto-generated method stub
		if (page < 0) {
			page = 1;
		}
		page = (page - 1) * 10;
		return sqlSession.selectList(namespace + ".listPage", page);
	}

	@Override
	public List<NoticeVO> listCriteria(Criteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listCriteria", cri);
	}

	@Override
	public void addCnt(int no) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".addCnt", no);
	}

	@Override
	public int totalCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".totalCount");
	}

	@Override
	public List<NoticeVO> listSearch(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int searchTotalCount(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".searchTotalCount", cri);
	}

	@Override
	public void updateReplyCnt(int no, int amount) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("amount", amount);
		sqlSession.update(namespace + ".updateReplyCnt", map);
	}

	@Override
	public void addAttach(String fullname) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".addAttach", fullname);
	}

	@Override
	public List<String> getAttach(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".getAttach", no);
	}

	@Override
	public void delImg(int no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delImg", no);
	}

	@Override
	public void deleteAttachByFullName(int no, String fullname) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("fullname", fullname);
		sqlSession.delete(namespace + ".deleteAttachByFullName", map);
	}

	@Override
	public void addAttachByBno(String fullname, int no) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("no", no);
		map.put("fullname", fullname);
		sqlSession.insert(namespace + ".addAttachByBno", map);
	}

	@Override
	public List<NoticeVO> notice(SearchCriteria cri) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".notice", cri);
	}

}
