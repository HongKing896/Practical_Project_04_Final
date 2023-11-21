<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.example.dao.BoardDAO,com.example.bean.BoardVO"%>

<% request.setCharacterEncoding("utf-8"); %>


<%
  BoardDAO boardDAO = new BoardDAO();
  String id=request.getParameter("id");
  BoardVO u=boardDAO.getBoard(Integer.parseInt(id));
%>

<html>
<head>
    <title>view</title>
</head>
<body>
<h1>Detail</h1>
<table>
  <tr><td>Title:</td><td><%= u.getTitle()%></td></tr>
  <tr><td>Category:</td><td><%= u.getCategory()%></td></tr>
  <tr><td>Writer:</td><td><%= u.getWriter()%></td></tr>
  <tr><td>Content:</td><td><%= u.getContent()%></td></tr>
  <td><a href="posts.jsp">Cancel</a></td>
</table>
</body>
</html>
