<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>


<%-- 1 번의 경우(respons) --%>
<%--
        respons : 응답 ( 단순이동 )
                    sendRedirect
--%>
<%--
<%
    String name = "홍두께";

    // 한글일 경우 주의점! 한글은 인코딩 시켜줘야함.
    name = URLEncoder.encode(name);

    response.sendRedirect("default1.jsp?name=" + name);
%>
--%>

<%-- 2 번의 경우 (pageContext) --%>
<%--
        pageContext : 이동 & 데이터 전송
--%>
<%--
<%
    String address = "부산시";

    request.setAttribute("address", address);   //짐싸

    pageContext.forward("default1.jsp");        //가자
//    response.sendRedirect("default1.jsp");    //데이터 전송을 할 수가 없다.
%>
--%>

<%-- 3 번의 경우 (session) --%>
<%--
        session : 저장공간. 로그인한 회원정보. 기한을 설정
--%>
<%
    String id = "412asd";

    session.setAttribute("id", id);              // 보관소에 저장
    session.setMaxInactiveInterval(60 * 60 * 2); // 365 * 24 * 60 * 60

    //session은 request를 통해서도 접근이 가능
//    request.getSession().setAttribute("id",id);

    //response나 pageContext로 둘다 페이지 이동 가능
//    response.sendRedirect("default1.jsp");
    pageContext.forward("default1.jsp");
%>

</body>
</html>
