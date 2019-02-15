package com.psw.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.psw.domain.CustomerVO;

@Repository
public class CustomerDaoImpl implements CustomerDAO {
	@Autowired
	private SqlSession sqlSession;

	private static final String namespace = "com.psw.mapper.CustomerMapper";

	@Override
	public void insert(CustomerVO vo) {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".insert", vo);

	}

	@Override
	public CustomerVO read(String code) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".read", code);
	}

	@Override
	public void update(CustomerVO vo) {
		// TODO Auto-generated method stub
		sqlSession.update(namespace + ".update", vo);
	}

	@Override
	public void delete(String code) {
		// TODO Auto-generated method stub
		sqlSession.delete(namespace + ".delete", code);
	}

	@Override
	public List<CustomerVO> listAll() {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".listAll");
	}

	@Override
	public List<CustomerVO> selectCustomerByName(CustomerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".selectCustomerByName", vo);
	}

	@Override
	public CustomerVO selectCustomerById(CustomerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectCustomerById", vo);
	}

	@Override
	public String nextCode() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + "nextCode");
	}

}
