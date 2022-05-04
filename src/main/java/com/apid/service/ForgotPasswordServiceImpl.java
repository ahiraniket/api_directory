package com.apid.service;

import java.util.List;
import java.util.Random;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.apid.dao.ForgotPasswordDAO;
import com.apid.model.ForgotPasswordVO;
import com.apid.model.LoginVO;

@Service
@Transactional
public class ForgotPasswordServiceImpl implements ForgotPasswordService {

	@Autowired
	ForgotPasswordDAO forgotPasswordDAO;

	 @Autowired
	 JavaMailSender mailSender;


	@Override
	public void insertUser(ForgotPasswordVO forgotPasswordVO) {

		String token = randomString();

		forgotPasswordVO.setToken(token);
		forgotPasswordVO.setStatus(false);

		String url="http://localhost:9090/verify-token?token=" + token;
		
		System.out.println(url);
		
		this.forgotPasswordDAO.insertUser(forgotPasswordVO);
		
		sendEmail(url, forgotPasswordVO.getEmailId());
		
	}
	
	public void sendEmail(String url,String toEmail){
		SimpleMailMessage message= new SimpleMailMessage();
		message.setFrom("noreply.apid@gmail.com");
		message.setTo(toEmail);
		message.setText("Click here to continue: "+url);
		message.setSubject("Subject");
		
		mailSender.send(message);
		System.out.println("Message send..");
		
		
	}

	private String randomString() {
		String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		StringBuilder sb = new StringBuilder();
		Random rnd = new Random();
		while (sb.length() < 18) { // length of the random string.
			int index = (int) (rnd.nextFloat() * chars.length());
			sb.append(chars.charAt(index));
		}
		String str = sb.toString();
		return str;

	}

	@Override
	public List verifyToken(String token) {

		return this.forgotPasswordDAO.verifyToken(token);
	}

	@Override
	public void updatePassword(LoginVO loginVO) {
		this.forgotPasswordDAO.updatePassword(loginVO);		
	}

	@Override
	public List loginDetailsOfUser(String emailId) {
		
		return this.forgotPasswordDAO.loginDetailsOfUser(emailId);
	}
}
