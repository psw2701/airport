package com.psw.persistence;

import java.util.List;

import com.psw.domain.CustomerVO;

public interface CustomerDAO {
	public void insert(CustomerVO vo);

	public CustomerVO read(String code);

	public void update(CustomerVO vo);

	public void delete(String code);

	public List<CustomerVO> listAll();

	List<CustomerVO> selectCustomerByName(CustomerVO vo);

	CustomerVO selectCustomerById(CustomerVO vo);

	String nextCode();
}
