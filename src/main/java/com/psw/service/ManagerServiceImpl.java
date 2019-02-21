package com.psw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.psw.domain.ManagerVO;
import com.psw.persistence.ManagerDAO;

@Service
public class ManagerServiceImpl implements ManagerService {

	@Autowired
	ManagerDAO dao;

	@Override
	public void insert(ManagerVO vo) {
		// TODO Auto-generated method stub
		dao.insert(vo);
	}

	@Override
	public ManagerVO read(String code) {
		// TODO Auto-generated method stub
		return dao.read(code);
	}

	@Override
	public void update(ManagerVO vo) {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public void delete(String code) {
		// TODO Auto-generated method stub
		dao.delete(code);
	}

	@Override
	public List<ManagerVO> listAll() {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<ManagerVO> selectManagerByName(ManagerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectManagerByName(vo);
	}

	@Override
	public ManagerVO selectManagerById(ManagerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectManagerById(vo);
	}

	@Override
	public String nextCode() {
		// TODO Auto-generated method stub
		return dao.nextCode();
	}

	@Override
	public ManagerVO login(String id, String passwd, String admin) {
		// TODO Auto-generated method stub
		return dao.login(id, passwd, admin);
	}

	@Override
	public ManagerVO searchId(ManagerVO vo) {
		// TODO Auto-generated method stub
		return dao.searchId(vo);
	}

	@Override
	public ManagerVO selectManagerByIdEmail(ManagerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectManagerByIdEmail(vo);
	}

	@Override
	public String getRandomPassword() {
		// TODO Auto-generated method stub
		return dao.getRandomPassword();
	}

	@Override
	public int changePw(ManagerVO vo) {
		// TODO Auto-generated method stub
		int res = dao.changePw(vo);
		return res;
	}

	@Override
	public ManagerVO selectManagerByPw(ManagerVO vo) {
		// TODO Auto-generated method stub
		return dao.selectManagerByPw(vo);
	}

}
