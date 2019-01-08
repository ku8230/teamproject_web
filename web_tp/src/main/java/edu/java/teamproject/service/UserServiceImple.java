package edu.java.teamproject.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import edu.java.teamproject.model.User;
import edu.java.teamproject.persistence.UserDao;
import edu.java.teamproject.util.MailHandler;
import edu.java.teamproject.util.Tempkey;

@Service
public class UserServiceImple implements UserService {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public void signUp(User user) throws MessagingException, UnsupportedEncodingException {
		if(userDao.insertUser(user) == 1) {
			String key = new Tempkey().getKey(50, false);
			if(userDao.createAuthKey(user.getEmail(), key) == 1) {
				MailHandler sendMail = new MailHandler(mailSender);
				sendMail.setSubject("[이메일 인증]");
				sendMail.setText(new StringBuffer().append("<h1>메일인증</h1>")
		                .append("<a href='https://localhost:8443/teamproject/user/emailConfirm?key=")
		                .append(key + "&user_email=")
		                .append(user.getEmail())
		                .append("' target='_blenk'>이메일 인증 확인</a>")
		                .toString());
				sendMail.setFrom("twon143@gmail.com", "엄태원");
				sendMail.setTo(user.getEmail());
				sendMail.send();
			}
		}

	}

	@Override
	public void signIn(User user) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int enableUserLogin(String email) {
		return userDao.enableUserLogin(email);
	}

}
