
<%@page import="mite.isc.Student"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.util.Vector"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sending Emails</title>
</head>
<body>
<%
List<Student> can=(List<Student>)pageContext.getAttribute("tobemailed", PageContext.APPLICATION_SCOPE);

List<String> mail=new Vector<String>();
for(Student m:can)
{
	mail.add(m.getEmail());
}

String frm="razakmohameddlithe@gmail.com",pss=(String)request.getParameter("pass");
Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.port", "587");
props.put("mail.smtp.host", "smtp.gmail.com");

  Session sessions = Session.getInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication(frm,pss);//change accordingly
   }
  });
 
//compose message
  try {

	  InternetAddress[] ids=new InternetAddress[mail.size()];
	  for(int index=0;index<mail.size();index++)
	  {
		  ids[index]=new InternetAddress(mail.get(index));
		  this.log(""+ids[index]);
	  }
   MimeMessage message = new MimeMessage(sessions);
   message.setFrom(new InternetAddress(frm));//change accordingly
   message.setRecipients(Message.RecipientType.TO,ids);
   //message.setSubject("Interview Alert: Company - "+com.getOrg());
   message.setSubject("Notification from ISE");
   message.setText("Congrats! you have done a great participation in Workshop Hope you practice further and develop your own application.\nAll the best from DLithe");
   this.log("Message Composed for "+ids.toString());
   
	Transport.send(message);
	this.log("Message Sent for "+ids.toString());
	
	response.sendRedirect("home.jsp");
  } 
  catch (javax.mail.MessagingException e) 
  {
	  //throw new RuntimeException(e);
} %>
</body>
</html>