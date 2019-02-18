package com.psw.service;

import java.util.List;

import com.psw.domain.CustomerVO;

public interface CustomerService {
	public void insert(CustomerVO vo);

	public CustomerVO read(String code);

	public void update(CustomerVO vo);

	public void delete(String code);

	public List<CustomerVO> listAll();

	List<CustomerVO> selectCustomerByName(CustomerVO vo);

	CustomerVO selectCustomerById(CustomerVO vo);

	String nextCode();
	
	/*public CustomerVO login(String id, String passwd);*/
}
