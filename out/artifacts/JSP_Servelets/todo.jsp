<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: eugene
  Date: 11/2/17
  Time: 1:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="todo.jsp">
    New todo <input type="text" name="todo"/>
    <input type="submit" value="submit">
</form>
<br>
<%
    ArrayList<String> todos = (ArrayList<String>) session.getAttribute("todoList");
    if (todos == null) {
        todos = new ArrayList<>();
        session.setAttribute("todoList", todos);
    }
    String todo = request.getParameter("todo");
    if (todo != null) {
        todos.add(todo);
    }

%>
<p>Our todo list</p>
<br>
<ul>
    <%

        for (String newTodo : todos) {
            out.println("<li>" + newTodo + "</li>");
        }
    %>
</ul>
</body>
</html>
