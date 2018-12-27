<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib uri="sym/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css" />
</head>
<body>

<%@ include file="top.jsp" %>
<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list">
	
	<c:forEach items="${subjects}" var="subject" varStatus="st">
		<li  <c:if test="${st.index%2==0 }">class="odd" </c:if>>
			<h4>				
				<a href="${pageContext.request.contextPath }/m/vote.do?id=${subject.id}">${subject.title}</a>
			</h4>
			<div class="join"><a href="${pageContext.request.contextPath }/m/vote.do?id=${subject.id}">我要参与</a></div>
			<p class="info">共有 ${subject.optionCount}个选项，已有 ${subject.userCount}个网友参与了投票。<br />
			投票时间：${subject.startTimeView } 至    ${subject.endTimeView }
			</p>
		</li>
	</c:forEach>
	</ul>
</div>
<div id="footer" class="wrap">
	艾特优软件 &copy; 版权所有
</div>
</body>
</html>
