package com.psw.airport;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.psw.domain.ManagerVO;
import com.psw.persistence.ManagerDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ManagerDaoTest {

	@Autowired
	private ManagerDAO dao;
	
	@Test
	public void testInsert() {
		ManagerVO vo = new ManagerVO();
		vo.setCode("M002");
		vo.setName("너직원");
		
		dao.insert(vo);
	}
}
