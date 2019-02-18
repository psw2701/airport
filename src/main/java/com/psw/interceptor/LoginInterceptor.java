/*package com.psw.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.psw.domain.LoginDTO;


public class LoginInterceptor implements HandlerInterceptor {

	private static final String LOGIN = "login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("------ login preHandle");
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		logger.info("------ login postHandle");

		LoginDTO dto = (LoginDTO) modelAndView.getModel().get("customerVO");
		if (dto != null) {// 회원이 로그인 시도
			HttpSession session = request.getSession();
			session.setAttribute(LOGIN, dto);

			Object dest = session.getAttribute("dest");
			String path = dest != null ? (String) dest : request.getContextPath() + "${pageContext.request.contextPath }";
			
			response.sendRedirect(path);
		}

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		logger.info("------ login afterCompletion");
	}

}*/
