<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%--
        내장객체 : 생성하지 않고 사용할 수 있는 객체

        out             : java영역에 작성한 코드를 웹으로 실행
        request(요청)   : Object를 (잠시)저장, 불러오기. Parameter의 값을 취득. Session으로 접근할 수 있다.
        response(응답)  : 웹 페이지를 이동시. (단순 이동)         -> sendRedirect
        session         : Object를 저장, 불러오기.
        pageContext     : 웹 페이지를 이동시. (값을 전달할때)     -> forward
--%>

<%
    out.println("하이 반갑습니다");
    System.out.println("하이 반갑습니다");

    out.println("<h3>하이 반갑습니다</h3>");

    String name = "정수동";
    out.println("<p>" + name + "</p>");
%>

<p><%=name%></p>


</body>
</html>
