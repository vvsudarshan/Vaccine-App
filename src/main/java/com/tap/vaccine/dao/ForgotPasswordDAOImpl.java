package com.tap.vaccine.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;

@Component
public class ForgotPasswordDAOImpl implements ForgotPasswordDAO {

	private SessionFactory sessionFactory;
	private JavaMailSender javaMailSender;

	public ForgotPasswordDAOImpl() {
		System.out.println(" ForgotPasswordDAOImpl()");
	}

	@Autowired
	public ForgotPasswordDAOImpl(SessionFactory sessionFactory,JavaMailSender javaMailSender) {
		this.sessionFactory = sessionFactory;
		this.javaMailSender = javaMailSender;
	}

	@Override
	public boolean resetPassword(String email, String newPassword) {
		System.out.println("Reseting Password");
		boolean flag = false;
		Session session = null;

		try {
			session = sessionFactory.openSession();
			Transaction transaction = session.beginTransaction();
			String UPDATE_QUERY = "update RegisterEntity re set re.loginAttempts=0 , re.password=:newPassword where re.email=:email";
			Query query = session.createQuery(UPDATE_QUERY);
			query.setParameter("newPassword", newPassword);
			query.setParameter("email", email);
			int i = query.executeUpdate();
			
			if(i > 0) {
				flag = true;
				 transaction.commit();  
			}else {
				flag = false;
			}
		}
		finally {
			if(session != null) {
				System.out.println("Session closed");
				session.close();
			}
		}

		return flag;
	}

	@Override
	public boolean passwordUpdatedEmail(String email, String newPassword) {
		boolean flag = false;
		try {
			
			MimeMessage mimeMessage = javaMailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true);
			helper.setTo(email);
			helper.setSubject("Password Changed Successfully");
			helper.setText("your password has been successfully changed. NOTE: please use Email: "+email+" Password: "+newPassword+" to login into your vaccine account,Thank you.");
			javaMailSender.send(mimeMessage);
			flag = true;
		}
		catch (MailException e) {
			flag = false;
			e.getMessage();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
	}

}
