<%@ page import="java.util.*" %>

<html>
<head><title>Forms demo with sessions</title></Head>
<body>
<form action="toDoListDemo.jsp">

Add Items : <input type="text" name="additem"/>
<br><br>
<input type="submit" value="Submit"/>
<br><br>


</form>


<%
	//get todo items from session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	//if todolist is empty create a new one.
	if(items==null){
		items=new ArrayList<String>();
		session.setAttribute("myToDoList",items);
	}
	
	String theItem=request.getParameter("additem");

	boolean isItemNotEmpty = (theItem != null) && (theItem.trim().length() > 0);
	boolean isItemNotDuplicate = (theItem != null) && (!items.contains(theItem.trim()));
	
	if (isItemNotEmpty && isItemNotDuplicate) {
		
		items.add(theItem.trim());
		
		response.sendRedirect("toDoListDemo.jsp"); // UPDATE: NEW CODE
	}


%>

<br><br>
<b>TODOLIST ITEMS</b>
<ol>
<%
for(String temp: items){
	out.println("<li>"+temp+"</li>");
	}
%>
	
</ol>
</body>
</html>