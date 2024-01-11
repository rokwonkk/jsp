<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //post로 전송시는 추가 해줘야한다.
    request.setCharacterEncoding("utf-8");
%>
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

<%--

    request : 요청
                                (매개변수명)
          String    <- getParameter(name)         1개의 데이터(이름, 나이)
          String[]  <- getParameterValues(name)   다수의 데이터(좋아하는 과일, 취미)

                       setAttribute( 키, Object )     Object를 저장(짐싸!)
          Object    <- getAttribute( 키 )             Object를 산출(짐풀자)
--%>
<%
    String name = "성춘향";
    int age = 24;
%>
<a href="default.jsp?name=<%=name%>&age=<%=age%>">default로 이동</a>

<br/><br/>

<form action="default.jsp" method="post">
    <input type="text" name="name" size="20" placeholder="이름입력"><br/>
    <input type="text" name="age" size="10" placeholder="나이입력"><br/><br/>

    <label><input type="checkbox" name="hobby" value="음악감상">음악감상</label><br/>
    <label><input type="checkbox" name="hobby" value="그림그리기">그림그리기</label><br/>
    <br/>

    <input type="submit" value="default로 이동">
</form>
<br/><hr/><br>

<!-- java Script 예 1 -->
<%--<input type="text" id="name" size="20" placeholder="이름입력"><br/>
<input type="text" id="age" size="10" placeholder="나이입력"><br/><br/>
<button type="button" onclick="move()">default로 이동</button>

<script>
    function move(){
        let name = document.getElementById("name").value;
        let age = document.getElementById("age").value;

        location.href = "default.jsp?name=" + name + "&age=" + age;
    }
</script>--%>

<!-- java Script 예 2 -->
<form name="frm">
<input type="text" name="name" size="20" placeholder="이름입력"><br/>
<input type="text" name="age" size="10" placeholder="나이입력"><br/><br/>
<button type="button" onclick="move()">default로 이동</button>
</form>
<script>
    function move(){
        let name = document.frm.name.value;
        let age = document.frm.age.value;

        location.href = "default.jsp?name=" + name + "&age=" + age;
    }
</script>
<br/><hr/><br/>

<!-- jquery -->
<form id="frm">
    <input type="text" name="name" id="_name" size="20" placeholder="이름입력"><br/>
    <input type="text" name="age" size="10" placeholder="나이입력"><br/><br/>

    <label><input type="checkbox" name="hobby" value="음악감상">음악감상</label><br/>
    <label><input type="checkbox" name="hobby" value="그림그리기">그림그리기</label><br/>
    <br/>

    <button type="button" id="move">default로 이동</button>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $("#move").click(function () {
            // alert("click");

            //검사
            let name = $("#_name").val();
            if(name.trim() === ""){
                alert("이름을 입력해 주십시오");
                $('#_name').value('');
                return;
            }


            $("#frm").attr("action", "default.jsp").submit();
        });
    });
</script>
<br/><hr/><br/>
<%
    String address = "부산시 수영구 광안동";

    request.setAttribute("address", address);

    String addr = (String)request.getAttribute("address");
    out.println("<p>" + addr + "</p>");
%>

</body>
</html>
