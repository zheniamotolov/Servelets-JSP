<%@ page import="java.util.Date" %>
<html>
<head>
    <title>
        Hello World Sample
    </title>
</head>

<body>
<jsp:include page="main.jsp"/>
<%=
    request.getHeader("User-Agent")
%>
<p>keks</p>
<%--<h1>--%>
<%--<%--%>
<%--String name = request.getParameter("name");--%>
<%--if (name == null || name.length() == 0) {--%>
<%--%>--%>
<%--Hello, world !--%>
<%--<%            } else {--%>
<%--%>--%>
<%--Hello, world ! I'm <%=name%>--%>
<%--<%--%>
<%--}--%>
<%--%>--%>
<%--</h1>--%>
</body>
</html>