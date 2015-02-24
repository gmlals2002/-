<%@page import="ksh.jspprj.model.Member"%>
<%@page import="ksh.jspprj.dao.MemberDao"%>
<%@page import="ksh.jspprj.dao.jdbc.jdbcMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% 






String uid = request.getParameter("uid");
String pwd = request.getParameter("pwd");



Member m = new jdbcMemberDao().getMember(uid);

	/* m.setUid(uid);
   	m.setPwd(pwd);
   	 */
   	

String msg =null;


if(m == null) //회원이 존재하지 않은 경우
   msg="회원이 존재하지 않습니다.";


else if(!m.getPwd().equals(pwd))
msg="비밀번호가 일치하지 않습니다.";
else //로그인성공
{

	session.setAttribute("uid", uid);
	
}


if(msg!=null)
{

   request.setAttribute("msg", msg);

   RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");

   dispatcher.forward(request, response);
}


response.sendRedirect("../index.jsp");
%>


<%=msg %>
