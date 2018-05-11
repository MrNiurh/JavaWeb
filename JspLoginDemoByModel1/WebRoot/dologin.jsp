<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>

<%
	request.setCharacterEncoding("utf-8");//防止中文乱码
%>

<jsp:useBean id="loginUser" class="com.po.Users" scope="page"></jsp:useBean>
<jsp:useBean id="userDAO" class="com.dao.UsersDAO" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="loginUser" />

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

	//如果同户名和密码都等于admin,则登录成功
	if (userDAO.usersLogin(loginUser)) {
		session.setAttribute("loginUser", loginUser.getUsername());
		request.getRequestDispatcher("login_success.jsp").forward(request, response);

	} else {
		response.sendRedirect("login_failure.jsp");
	}
%>