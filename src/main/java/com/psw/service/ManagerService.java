package com.psw.service;

import java.util.List;

import com.psw.domain.ManagerVO;

public interface ManagerService {
	public void insert(ManagerVO vo);

	public ManagerVO read(String code);

	public void update(ManagerVO vo);

	public void delete(String code);

	public List<ManagerVO> listAll();

	List<ManagerVO> selectManagerByName(ManagerVO vo);

	ManagerVO selectManagerById(ManagerVO vo);

	String nextCode();

	public ManagerVO login(String id, String passwd, String admin);

	ManagerVO searchId(ManagerVO vo);

	ManagerVO selectManagerByIdEmail(ManagerVO vo);

	String getRandomPassword();

	int changePw(ManagerVO vo);

	ManagerVO selectManagerByPw(ManagerVO vo);
}
