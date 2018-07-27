<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.vo.Product" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 상세 조회</title>
<style type="text/css">
	table, tr, th, td{
		border: 1px solid black;
	}
</style>
</head>
<body>
<h3>제품 상세 조회</h3>
<hr>
	<table>
		<tr>
			<th>제품 코드</th>
			<td>${product.prodCode }</td>
		</tr>
		<tr>
			<th>제품 이름</th>
			<td>${product.prodName }</td>
		</tr>
		<tr>
			<th>가격</th>
			<td><fmt:formatNumber value="${product.price }" type="currency" currencySymbol="￦"/></td>
		</tr>
		<tr>
			<th>재고</th>
			<td>${product.quantity }</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
				<a href="list">목록보기</a>
				<a href="update?prodCode=${product.prodCode }">수정</a>
				<a href="delete?prodCode=${product.prodCode }">삭제</a>
		</tr>
	</table>

</body>
</html>