package com.psw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psw.domain.CustomerVO;
import com.psw.persistence.CustomerDAO;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	CustomerDAO dao;

	@Override
	public void insert(CustomerVO vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);
	}

	@Override
	public CustomerVO read(String code) {
		// TODO Auto-generated method stub
		return dao.read(code);
	}

	@Override
	public void update(CustomerVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void delete(String code) {
		// TODO Auto-generated method stub
		dao.delete(code);
	}

	@Override
	public List<CustomerVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<CustomerVO> selectCustomerByName(CustomerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectCustomerByName(vo);
	}

	@Override
	public CustomerVO selectCustomerById(CustomerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectCustomerById(vo);
	}

	@Override
	public String nextCode() {
		// TODO Auto-generated method stub
		return nextCode();
	}

	/*@Override
	public CustomerVO login(String id, String passwd) {
		// TODO Auto-generated method stub
		return dao.login(id, passwd);
	}*/

}
