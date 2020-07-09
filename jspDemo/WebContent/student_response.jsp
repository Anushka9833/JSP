<html>
<head>
<title>Student Confirmation Form </title></head>

<body>

Student name is : ${param.firstName } 
<br><br>
Student's age is : ${param.age }
<br><br>
Student's date of birth is: ${param.dob}
<br><br>
Student's favourite languages are/is :
<ul>
 <%
 	String[] s=request.getParameterValues("favLanguage");
 	if(s!=null){
 		for(String temp:s){
 	 		out.println("<li>"+temp+"</li>");
 	 	}
 	}else{
 		out.println("NOne");
 	}
 	
 %>
</ul>

</body>
</html>