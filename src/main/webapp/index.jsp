<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<!-- Html 주석문 -->

<%-- JSP 주석문 --%>

<h1>Hello Jsp</h1>
<h3>Hello Jsp</h3>
<h6>Hello Jsp</h6>

<p>환영합니다 jsp의 세계로</p>

<%--
        JSP : Java Server Page
--%>
<%
    //java 영역(Scriptlet)
    //Scriptlet = script + applet
    System.out.println("Hello JSP");

//        Servlet = Java( Html )
//        JSP = Html( Java )

    /*
     *   내장(암시) 객체 : new를 통해서 객체를 생성하지 않고 바로 사용할 수 있는 class
     *                     웹문서 간에 내장객체를 통해서 데이터를 관리 할 수 있다.
     */
%>

web 영역 <br/><br/>

<%
    String name = "홍길동";
%>

<%--
        scriptlet == java영역

        특정 class나 함수를 선언. 전역변수를 선언하는 영역
        <%! %>

        소스코드를 구현
        <% %>

        값을 할당 받을 때(취득)
        <%= %>

--%>

<%-- value 부 --%>
이름: <%=name%> <br/><br/>

<input type="text" size="20" value="<%=name%>"><br/><br/>

<p><%=name%>
</p>

<br/><br/>

<%-- 선언부 --%>
<%!
    public void func() {
        System.out.println("func() 호출");
    }

    int number = 0; // global 변수
%>

<%-- 코드 구현부, 소스부 --%>
<%
    func();

    number++;

    System.out.println(number);
%>

<input type="text" value="<%=number%>">

<br/><br/>

<%
    for (int i = 0; i < 100; i++) {
%>
<span><%=(i + 1)%></span>
<%
    }
%>

</body>
</html>