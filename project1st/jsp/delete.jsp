<%@page import="airdnd.Lodging_DB"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
        String lodging_code = request.getParameter("lodging_code");
        
    	Lodging_DB db = new Lodging_DB();
        db.delete(lodging_code);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 정보 삭제</title>
</head>
<body>
숙소 정보가 삭제되었습니다.
</body>
</html>