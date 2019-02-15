package com.psw.airport;


import org.junit.FixMethodOrder;

import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.psw.domain.CustomerVO;
import com.psw.persistence.CustomerDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class CustomerDaoTest {
	@Autowired
	private CustomerDAO dao;

	//@Test
	public void testInsert() {
		CustomerVO vo = new CustomerVO();
		vo.setCode("C002");
		vo.setName("김재영");
		vo.setId("xbmhw325");
		vo.setZipCode("14145");
		vo.setAddress("대구시 서구");
		vo.setPhone("010-1515-1515");
		vo.setEmail("xbmhw325@daum.com");
		vo.setPasswd("123456789");

		dao.insert(vo);
	}
	
	//@Test
	public void testListAll() {
		System.out.println("listAll============>"+dao.listAll());
	}
	
	//@Test
	public void testRead() {
		CustomerVO vo = dao.read("C002");
		System.out.println(vo);
	}
	
	//@Test
	public void testDelete() {
		CustomerVO vo = new CustomerVO();
		vo.setCode("C002");
		dao.delete("C002");
		System.out.println(vo);
	}
	
	//@Test
	public void testUpdate() {
		CustomerVO vo = dao.read("C002");
		vo.setPasswd("123456789");
		vo.setZipCode("11111");
		vo.setAddress("서울");
		dao.update(vo);
		vo=dao.read("C002");
		System.out.println(vo);
		
	}
}
