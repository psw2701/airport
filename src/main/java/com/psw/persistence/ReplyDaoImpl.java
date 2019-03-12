package com.psw.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psw.domain.Criteria;
import com.psw.domain.ReplyVO;

@Repository
public class ReplyDaoImpl implements ReplyDAO {

	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.psw.mapper.ReplyMapper";

	@Override
	public List<ReplyVO> list(int bno) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".list", bno);
	}

	@Override
	public void create(ReplyVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".create", vo);
	}

	@Override
	public void update(ReplyVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int no) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", no);

	}

	@Override
	public List<ReplyVO> listPage(Criteria cri, int bno) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<>();
		map.put("bno", bno);
		map.put("cri", cri);
		return sqlSession.selectList(namespace + ".listPage", map);
	}

	@Override
	public int totalCount(int bno) {
		return sqlSession.selectOne(namespace + ".totalCount", bno);

	}

	@Override
	public ReplyVO selectByRno(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectByRno", no);
	}

	@Override
	public ReplyVO selectByBno(int no) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".selectByBno",no);
	}

	@Override
	public void deleteByBoardNo(int bno) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace+".deleteByBoardNo",bno);
	}

}
