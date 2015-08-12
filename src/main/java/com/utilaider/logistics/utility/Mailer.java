package com.utilaider.logistics.utility;

import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mailer {

    public static void send(String to, String subject, String msg) {

        final String user = "upadhyay.dhiren2@gmail.com";// change accordingly
        final String pass = "dhiren89";

        // 1st step) Get the session object
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");// change accordingly
        // props.setProperty("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(user, pass);
                    }
                });
        // 2nd step)compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(
                    to));
            message.setSubject(subject);
            message.setContent(msg, "text/html");
            System.out.println("message is=" + message);
            // 3rd step)send message
            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {

            throw new RuntimeException(e);
        }
    }
}
