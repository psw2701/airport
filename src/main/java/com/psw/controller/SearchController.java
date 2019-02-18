package com.psw.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.psw.domain.CustomerVO;
import com.psw.service.CustomerService;

@Controller
@RequestMapping("/search/")
public class SearchController {
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);

	@Autowired
	private CustomerService service;

	@RequestMapping(value = "searchId", method = RequestMethod.GET)
	public String getSearchId() {
		logger.info("searchId ------ get");
		return "search/searchId";
	}

	@RequestMapping(value = "searchId", method = RequestMethod.POST)
	public String postSearchId(HttpServletRequest req, Model model) {
		logger.info("searchId - post");

		String name = req.getParameter("name");
		String email1 = req.getParameter("email1");
		String email2 = req.getParameter("email2");

		CustomerVO customer = new CustomerVO();
		customer.setName(name);
		customer.setEmail(email1 + "@" + email2);

		try {
			customer = service.searchId(customer);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		String id = customer.getId();
		model.addAttribute("id", id);

		return "/search/resultId";
	}

	@RequestMapping(value = "searchPw", method = RequestMethod.GET)
	public String getSearchPw() {
		logger.info("searchPw ------ get");
		return "search/searchPw";
	}

	@RequestMapping(value = "searchPw", method = RequestMethod.POST)
	public String postSearchPw(HttpServletRequest req, CustomerVO vo, Model model, HttpServletResponse res)
			throws IOException {
		logger.info("postSearchPw ----- post");

		try {
			String name = req.getParameter("name");
			String id = req.getParameter("id");
			String email1 = req.getParameter("email1");
			String email2 = req.getParameter("email2");

			logger.info("name ====> " + name);
			logger.info("id ====> " + id);
			logger.info("email1 ====> " + email1);
			logger.info("email2 ====> " + email2);

			CustomerVO customer = new CustomerVO();
			customer.setName(name);
			logger.info("customer : " + customer);
			logger.info("name : " + name);

			customer.setId(id);
			customer.setEmail(email1 + "@" + email2);
			customer = service.selectCustomerByIdEmail(customer);
			logger.info("customer ---------------->" + customer);

			/*CustomerVO custome = new CustomerVO();
			logger.info("custome ---------------->" + custome);*/
			
			
			if (customer.getName().equals(name) || customer.getEmail().equals(email1 + "@" + email2)) {

				String newPwd = service.getRandomPassword();
				customer.setPasswd(newPwd);

				service.changePw(vo);
				logger.info("vo ---------------->" + vo);
				String newPw = customer.getPasswd();
				req.setAttribute("newPwd", newPw);

				String from = "psw2701";
				String passwd = "swan0303";
				String[] to = { customer.getEmail() }; // 보낼 메일 목록
				String subject = "WIT렌터카입니다 비밀번호를 개인정보관리에서 변경해주세요"; // 메일 제목
				String body = "고객님의 임시 비밀번호는 " + customer.getPasswd() + " 입니다 로그인하여 개인정보관리에서 비밀번호를 변경해주세요 "; // 메일

				sendFromGMail(from, passwd, to, subject, body);

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			String msg = "1";
			req.setAttribute("msg", msg);
			return "search/searchPw";
		}
		res.sendRedirect("searchResultPw");
		return null;

	}

	private void sendFromGMail(String from, String pass, String[] to, String subject, String body) {
		Properties props = System.getProperties();
		String host = "smtp.gmail.com";
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.user", from);
		props.put("mail.smtp.password", pass);
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(props);
		MimeMessage message = new MimeMessage(session);

		try {
			message.setFrom(new InternetAddress(from));
			InternetAddress[] toAddress = new InternetAddress[to.length];

			// To get the array of addresses
			for (int i = 0; i < to.length; i++) {
				toAddress[i] = new InternetAddress(to[i]);
			}

			for (int i = 0; i < toAddress.length; i++) {
				message.addRecipient(Message.RecipientType.TO, toAddress[i]);
			}

			message.setSubject(subject);
			message.setText(body);
			Transport transport = session.getTransport("smtp");
			transport.connect(host, from, pass);
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		} catch (AddressException ae) {
			ae.printStackTrace();
		} catch (MessagingException me) {
			me.printStackTrace();
		}

	}
}
