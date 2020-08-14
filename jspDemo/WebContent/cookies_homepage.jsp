<html>
<head>
<title>Cookies Homepage :)</title>
</head>
<body>
<%
	String favLang="Java";
	Cookie[] cu=request.getCookies();
	
	if(cu!=null){
		for(Cookie temp : cu){
			if("myApp.favLanguage".equals(temp.getName())){
				favLang=temp.getValue();
				break;
			}
		}
	}
%>
New books for language : <%=favLang%>
<a href="cookies_personalise_form.html">Personalise this page </a>
</body>
</html>