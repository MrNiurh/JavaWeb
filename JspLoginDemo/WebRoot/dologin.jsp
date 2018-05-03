<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("utf-8");//防止中文乱码

	String username = "";
	String password = "";

	username = request.getParameter("username");
	password = request.getParameter("password");

	//如果同户名和密码都等于admin,则登录成功
	if ("admin".equals(username) && "admin".equals(password)) {
		session.setAttribute("loginUser", username);
		request.getRequestDispatcher("login_success.jsp").forward(request, response);

	} else {
		response.sendRedirect("login_failure.jsp");
	}
%>

