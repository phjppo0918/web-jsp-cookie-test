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
		c.setValue("티익스프레스");
		response.addCookie(c);
		break;
	case "cheight" : 
		int height = Integer.parseInt(c.getValue());
		if(height <= 150) {
			out.print("키가 너무 작아요~" + "<br>");
		}
	}
}
%>



</body>
</html>