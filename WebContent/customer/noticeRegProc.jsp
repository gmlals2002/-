<%@page import="ksh.jspprj.dao.jdbc.jdbcNoticeFileDao"%>
<%@page import="ksh.jspprj.model.NoticeFile"%>
<%@page import="ksh.jspprj.dao.NoticeFileDao"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="ksh.jspprj.dao.jdbc.JdbcNoticeDao"%>
<%@page import="ksh.jspprj.dao.NoticeDao"%>
<%@page import="ksh.jspprj.model.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	ServletContext ctx = request.getServletContext();
	String path = ctx.getRealPath("/customer/upload");
	out.println(path + "<br />");
	
	MultipartRequest req = new MultipartRequest(request
						, path
						, 1024*1024*10
						, "UTF-8"
						, new DefaultFileRenamePolicy());
	
	String title = req.getParameter("title");
   	String file = req.getFilesystemName("file");
   	String content = req.getParameter("content");
   	
   
   	
   	
   /* 	out.println(path + "<br />");
   	out.println(path + "<br />");
   	out.println(path + "<br />"); */
	
   /*  String title = request.getParameter("title");
   	String file = request.getParameter("file");
   	String content = request.getParameter("content"); */
  	 
   	Notice n = new Notice();
   	n.setTitle(title);
   	n.setCode(file);
   	n.setContent(content);
   	n.setWriter("HeeMin"); //현재는 임의로 이름을 직접지정
   	//notice.setfile(...)현재는 파일을 등록하지 않음
   	
   	
   	NoticeDao dao = new JdbcNoticeDao();
   	dao.insert(n);
   	
   	
   
   	 if(	req.getFile("file") !=null)
   	{
   	 
   	String noticeCode = dao.lastCode();
   	
   	
   	
   	NoticeFile noticeFile = new NoticeFile();
   
   	noticeFile.setSrc(file);
   	noticeFile.setDescription("");
   	noticeFile.setNoticeCode(noticeCode);
   	
   	NoticeFileDao fileDao = new  jdbcNoticeFileDao();
   	fileDao.insert(noticeFile);
   	
   	} 
  	 
   	//목록 페이지
   	response.sendRedirect("notice.jsp"); 
%>