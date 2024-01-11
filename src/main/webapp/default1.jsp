<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index4 -> default1</title>
</head>
<body>

<h3>default 1</h3>
<!-- 1번 respons -->
<%--
<%
    String name = request.getParameter("name");
%>
<p>이름: <%=name%></p>
--%>

<!-- 2번 pageContext -->
<%--
<%
    String address = (String)request.getAttribute("address");
%>
<p>주소: <%=address%></p>
--%>

<!-- 3번 session -->
<%
    String id = (String) session.getAttribute("id");    //보관소에서 산출
%>
<p>id : <%=id%></p>
</body>
</html>
