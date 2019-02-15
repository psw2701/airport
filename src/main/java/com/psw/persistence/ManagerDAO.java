package com.psw.persistence;

import java.util.List;

import com.psw.domain.ManagerVO;

public interface ManagerDAO {
	public void insert(ManagerVO vo);

	public ManagerVO read(String no);

	public void update(ManagerVO vo);

	public void delete(String no);

	public List<ManagerVO> listAll();
}
