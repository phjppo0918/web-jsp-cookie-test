<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

String name = request.getParameter("name");
String age = request.getParameter("age");
String height = request.getParameter("height");

Cookie nameCookie = new Cookie("cname", name);
nameCookie.setMaxAge(3600);
nameCookie.setPath("/cookieTest");

Cookie ageCookie = new Cookie("cage", age);
ageCookie.setMaxAge(3600);
ageCookie.setPath("/cookieTest");

Cookie heightCookie = new Cookie("cheight", age);
heightCookie.setMaxAge(3600);
heightCookie.setPath("/cookieTest");

Cookie locationCookie = new Cookie("location", "매표소");
locationCookie.setMaxAge(3600);
locationCookie.setPath("/cookieTest");

response.addCookie(nameCookie);
response.addCookie(ageCookie);
response.addCookie(locationCookie);
response.addCookie(heightCookie);
%>

티켓 발급이 완료되었습니다!
</body>
</html>