<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = request.getParameter("name");
    String age = request.getParameter("age");

    String hobby[] = request.getParameterValues("hobby");
%>
<html>
<head>
    <title>여기가 servlet에 해당</title>
</head>
<body>

<p>이름 : <%=name%></p>
<p>나이 : <%=age%></p>

<%
    if(hobby != null){
    for (int i = 0; i < hobby.length; i++) {
%>
        <p>취미: <%=hobby[i]%></p>
<%
    }
}
%>

</body>
</html>
