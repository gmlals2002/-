<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


    <c:set var="ctxName" value="${pageContext.request.servletContext.contextPath}"/>
    
    
    
    
     <header id="header">
        <div class="content-wrapper">
            <h1 id="logo"><a href="${ctxName}/index.html"><img src="${ctxName}/images/logo.png" alt="����ó �¶���" /></a></h1>
            <section class="header-item-container">
                <h1 class="hidden">�Ӹ���</h1>
                <nav id="main-menu">
                    <h1 class="hidden">���θ޴�</h1>
                    <ul class="clearfix">
                        <li class="main-menu-item"><a class="main-menu-item-text" href="">�н����̵�</a></li>
                        <li class="main-menu-item"><a class="main-menu-item-text" href="">��������</a></li>
                        <li class="main-menu-item"><a class="main-menu-item-text" href="">���¼���</a></li>
                    </ul>
                </nav>

                <div id="lecture-search-form">
                    <h3 class="hidden">���°˻� ��</h3>
                    <form>
                        <fieldset>
                            <legend class="hidden">�˻��ʵ�</legend>
                            <label id="lecture-search-input-label" for="subject">�����˻�</label>
                            <input id="lecture-search-input" class="g1" type="text" name="subject" />
                            <input id="lecture-search-button" type="submit" value="�˻�" />
                        </fieldset>
                    </form>
                </div>

                <nav id="member-menu">
                    <h1 class="hidden">ȸ���޴�</h1>
                    <ul class="clearfix">
                       
                       <li class="member-menu-item"><a class="member-menu-item-text" href="${ctxName}/index.html">Ȩ</a></li>
                        
                        
                       <li class="member-menu-item">
                        <c:if test="${uid == null }">
                        <a class="member-menu-item-text" href="${ctxName}/joinus/login.jsp">�α���</a>
                        </c:if>
                        <c:if test="${uid !=null }" >
                        <a class="member-menu-item-text" href="${ctxName}joinus/logoutProc.jsp">�α׾ƿ�</a>
                        </c:if>
                        </li>
                        
                         
                         
                         
                        <li class="member-menu-item"><a class="member-menu-item-text" href="${ctxName}/join.jsp">ȸ������</a></li>
                    </ul>
                </nav>

                <nav id="my-menu">
                    <h1 class="hidden">�����͸޴�</h1>
                    <ul class="clearfix">
                        <li class="my-menu-item"><a class="my-menu-item-text" href=""><img src="${ctxName}/images/txt-mypage.png" alt="����������" /></a></li>
                        <li class="my-menu-item"><a class="my-menu-item-text" href="${ctxName}/customer/notice.jsp"><img src="${ctxName}/images/txt-customer.png" alt="������" /></a></li>
                    </ul>
                </nav>
            </section>
        </div>
    </header>
    