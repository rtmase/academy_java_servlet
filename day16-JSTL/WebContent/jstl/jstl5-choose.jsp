<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL (5) Core Tag : choose</title>
</head>
<body>
<h4>&lt;c:choose&gt;</h4>
<pre>
&lt;c:choose&gt; : &lt;c:if&gt; 와 유사한 조건 분기 기능
		if ~ if else ~ else 구문과 비슷하게 사용 가능
		내부에 &lt;c:when&gt;, &lt;c:otherwise&gt; 를 배치해서 분기
</pre>
<hr>
<% // 리스트에 1 ~ 10 까지 숫자를 저장
	List<Integer> numbers = new ArrayList<>();
	for (int idx = 1; idx <11; idx++) {
		numbers.add(idx);
	}
	
	request.setAttribute("numbers", numbers);
%>
<c:forEach items="${numbers }" var="num">
	<c:choose>
		<c:when test="${num % 2 eq 0 }">
			${num } 은 짝수 입니다.<br/>
		</c:when>
		<c:when test="${num % 2 eq 1 }">
			${num } 은 홀수 입니다.<br/>
		</c:when>
	</c:choose>
</c:forEach>
</body>
</html>