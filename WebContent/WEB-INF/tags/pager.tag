<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="total" required="false" rtexprvalue="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.newlecture.com/jsp/tags/function" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="urlTokens" value="${fn:split(pageContext.request.requestURI, '?')}"/>
${urlTokens[0]}

    	<ul class="pager-list">
                        
                        <%-- <new:for var="i" count="5"> --%>
                        <%-- <c:forEach var="i" begin="1" end="5"> --%>
                        <c:if test="${empty param.page}">
					    <c:set var="page" value="1"></c:set>
						   </c:if>
						   <c:if test="${not empty param.page}">
						      <c:set var="page" value="${param.page}"></c:set>
						   </c:if>
						
						   <c:set var="startNum" value="${p-(p-1)%5}" />
                          <c:forEach var="i" begin="${startNum}" end="${startNum+4}">
                          <c:if test="${i <= f:lastNum(total)}">
                             <c:if test="${p ==i}">
                         <li class="pager-item"><a
                              href="notice.jsp?p=${i}"
                               class="text-highlight">${i}</a></li>
                           </c:if>
                          <c:if test="${p!=i}">
                        <li class="pager-item"><a
                           href="notice.jsp?p=${i}&q=${param.q}&f=${param.f}">${i}</a></li>
                          </c:if>
                          </c:if>
                          <c:if test="${i > f:lastNum(total)}">
                         <c:if test="${p !=i}">
                          <li class="pager-item">${i}</li>
                          </c:if>
                        </c:if>
                        </c:forEach>
                     	</ul>
                     	
                     	