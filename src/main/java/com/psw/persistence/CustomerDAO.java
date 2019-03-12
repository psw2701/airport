package com.psw.persistence;

import java.util.List;

import com.psw.domain.CustomerVO;

public interface CustomerDAO {
	public void insert(CustomerVO vo);//추가

	public CustomerVO read(String code);//상세정보

	public void update(CustomerVO vo);//수정

	public void delete(String code);//삭제

	public List<CustomerVO> listAll();//모든고객리스트

	List<CustomerVO> selectCustomerByName(CustomerVO vo);

	CustomerVO selectCustomerById(CustomerVO vo);

	String nextCode();
	
	public CustomerVO login(String id, String passwd, String admin);
	
	CustomerVO searchId(CustomerVO vo);
	
	CustomerVO selectCustomerByIdEmail(CustomerVO vo);
	
	String getRandomPassword();
	
	int changePw(CustomerVO vo);
	
	CustomerVO selectCustomerByPw(CustomerVO vo);
	
	int samePwd(CustomerVO vo); //고객이 회원정보수정하기위해 회원이 있는가
}
