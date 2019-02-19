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
	public String postSearchId(CustomerVO vo, Model model) {
		logger.info("searchId - post");
		logger.info(vo.toString());

		try {
			vo = service.searchId(vo);

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		String id = vo.getId();
		model.addAttribute("id", id);

		return "/search/resultId";
	}

	@RequestMapping(value = "searchPw", method = RequestMethod.GET)
	public String getSearchPw() {
		logger.info("searchPw ------ get");

		return "search/searchPw";
	}

	@RequestMapping(value = "searchPw", method = RequestMethod.POST)
	public String postSearchPw(CustomerVO vo, Model model, HttpServletResponse res) throws IOException {
		logger.info("postSearchPw ----- post");
		logger.info(vo.toString());

		try {

			CustomerVO vo2 = service.selectCustomerByIdEmail(vo);
			logger.info("vo ---------------->" + vo);

			if (vo2.getName().equals(vo.getName()) || vo2.getEmail().equals(vo.getEmail())) {

				String newPwd = service.getRandomPassword();
				vo2.setPasswd(newPwd);

				int result = service.changePw(vo2);
				logger.info("result ---------------->" + result);
				logger.info("customer ---------------->" + vo2);
				String newPw = vo2.getPasswd();
				logger.info("newPw ---------------->" + newPw);

				String from = "psw2701";
				String passwd = "swan0303";
				String[] to = { vo2.getEmail() };// 蹂대궪 硫붿씪 紐⑸줉
				String subject = "SWAIR공항입니다. 비밀번호를 개인정보관리에서 변경해주세요"; // 硫붿씪 �젣紐�
				String body = "고객님의 임시 비밀번호는" + vo2.getPasswd() + " 입니다. 로그인하여 개인정보 관리에서 비밀번호를 변경해주세요 "; // 硫붿씪

				sendFromGMail(from, passwd, to, subject, body);

			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "search/searchPw";
		}

		return "redirect:/search/resultPw";

	}

	@RequestMapping(value = "resultPw", method = RequestMethod.GET)
	public String getResultPw() {
		logger.info("resultPw ------ get");
		return "search/resultPw";
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
