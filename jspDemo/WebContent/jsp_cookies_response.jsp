<html>
<head>
<title>Confiramtion cookies</title>
</head>
<body>
<%
String favLang=request.getParameter("favLang");
Cookie c=new Cookie("MyApp.favLanguage",favLang);
c.setMaxAge(60*60*24);
response.addCookie(c);
%>
Thanks !! We have set your favourite language to ${param.favLang}
<br/><br>
<a href="cookies_homepage.jsp">Return to Home</a>
</body>
</html>