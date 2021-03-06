package com.psw.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psw.domain.ManagerVO;

@Repository
public class ManagerDaoImpl implements ManagerDAO {
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.psw.mapper.ManagerMapper";

	@Override
	public void insert(ManagerVO vo) {
		sqlSession.insert(namespace + ".insert", vo);

	}

	@Override
	public ManagerVO read(String code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".read", code);
	}

	@Override
	public void update(ManagerVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public void delete(String code) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", code);
	}

	@Override
	public List<ManagerVO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll");
	}

	@Override
	public List<ManagerVO> selectManagerByName(ManagerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectManagerByName", vo);
	}

	@Override
	public ManagerVO selectManagerById(ManagerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectManagerById", vo.getId());
	}

	@Override
	public String nextCode() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".nextCode");
	}

	@Override
	public ManagerVO login(String id, String passwd, String admin) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("passwd", passwd);
		map.put("admin", admin);
		return sqlSession.selectOne(namespace + ".login", map);
	}

	@Override
	public ManagerVO searchId(ManagerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".searchId", vo);
	}

	@Override
	public ManagerVO selectManagerByIdEmail(ManagerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectManagerByIdEmail", vo);
	}

	@Override
	public String getRandomPassword() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".getRandomPassword");
	}

	@Override
	public int changePw(ManagerVO vo) {
		// TODO Auto-generated method stub
		int res = sqlSession.update(namespace + ".changePw", vo);
		return res;
	}

	@Override
	public ManagerVO selectManagerByPw(ManagerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectManagerByPw", vo);
	}

}
