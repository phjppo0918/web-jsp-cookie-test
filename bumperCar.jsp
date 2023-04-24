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
Cookie[] cookies = request.getCookies();

for(Cookie c : cookies) {
	switch(c.getName()) {
	case "cname" :
		out.print("이름 : " + c.getValue() + "<br>");
		break;
	case "cage" :
		out.print("나이 : " + c.getValue() + "<br>");
		break;
	case "location" :
		out.print("이전에 간 장소 : " + c.getValue() + "<br>");
		c.setValue("범퍼카");
		response.addCookie(c);
		break;
	}
}
%>



</body>
</html>