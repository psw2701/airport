package com.psw.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		return sqlSession.selectOne(namespace + ".selectCustomerById", vo.getId());
	}

	@Override
	public String nextCode() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".nextCode");
	}

	@Override
	public CustomerVO login(String id, String passwd, String admin) {
		// TODO Auto-generated method stub
		Map<String, String> map = new HashMap<>();
		map.put("id", id);
		map.put("passwd", passwd);
		map.put("admin", admin);
		return sqlSession.selectOne(namespace + ".login", map);
	}

	@Override
	public CustomerVO searchId(CustomerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".searchId", vo);
	}

	@Override
	public CustomerVO selectCustomerByIdEmail(CustomerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectCustomerByIdEmail", vo);
	}

	@Override
	public String getRandomPassword() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".getRandomPassword");
	}

	@Override
	public int changePw(CustomerVO vo) {
		// TODO Auto-generated method stub
		int res = sqlSession.update(namespace + ".changePw", vo);
		return res;
	}

	@Override
	public CustomerVO selectCustomerByPw(CustomerVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".selectCustomerByPw", vo);
	}

	@Override
	public int samePwd(CustomerVO vo) {
		// TODO Auto-generated method stub
		System.out.println("=====> sql : "+sqlSession);
		System.out.println("=====> vo : "+vo);
		int result = sqlSession.selectOne(namespace+".samePwd",vo);
		System.out.println("=====> result : "+result);
		return result;
	
	}

}
