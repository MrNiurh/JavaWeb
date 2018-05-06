<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="page" />
	<h1>setProperty动作元素</h1>
	<hr>

	<!-- 根据表单自动匹配所有的属性 -->
	<%--
	<jsp:setProperty name="myUsers" property="*" />
	--%>


	<!-- 根据表单匹配部分的属性 -->
	<%-- 
	<jsp:setProperty property="username" name="myUsers" />
	--%>

	<!-- 跟表单无关,通过手工赋值给属性 -->
	<%-- 
	<jsp:setProperty property="username" name="myUsers" vlue="lisi" />
	<jsp:setProperty property="password" name="myUsers" vlue="123456" />
	--%>

	<!-- 通过URL传参数给属性赋值 -->
	<jsp:setProperty property="username" name="myUsers" />
	<jsp:setProperty property="password" name="myUsers" param="mypass" />

	用户名:<%=myUsers.getUsername()%>
	<br> 密码:<%=myUsers.getPassword()%>
	<br>

</body>
</html>
