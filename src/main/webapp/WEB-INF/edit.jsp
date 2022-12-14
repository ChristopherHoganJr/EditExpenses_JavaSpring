<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit My Task</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body class="container">
	<h1>
		Edit Expense:
		<c:out value="${thisExpense.expense }" />
	</h1>
	<form:form action="/expenses/edit/${thisExpense.id}" model="post" modelAttribute="thisExpense">
		<input type="hidden" name="_method" value="put">
		<p>
			<form:label path="expense">Expense Name:</form:label>
			<form:errors path="expense" />
			<form:input path="expense" />
		</p>
		<p>
			<form:label path="vendor">Vendor:</form:label>
			<form:errors path="vendor" />
			<form:input path="vendor" />
		</p>
		<p>
			<form:label path="amount">Amount:</form:label>
			<form:errors path="amount" />
			<form:input type="number" path="amount" />
		</p>
		<p>
			<form:label path="description">Description:</form:label>
			<form:errors path="description" />
			<form:textarea path="description" />
		</p>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>

