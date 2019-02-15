package com.psw.persistence;

import java.util.List;

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
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insert", vo);
	}

	@Override
	public ManagerVO read(String no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(ManagerVO vo) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(String no) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<ManagerVO> listAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
