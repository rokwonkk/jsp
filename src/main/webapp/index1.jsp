<%@ page import="jsp.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    class Human {

        String name;
        int age;

        public Human() {
            name = "홍길동";
            age = 24;
        }

        public void print() {
            System.out.println("이름: " + name + ", 나이: " + age);
        }
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    Human human = new Human();
    human.print();

    Student student = new Student();
    System.out.println(student.toString());

%>

<table border="1">
    <tr>
        <th>이름</th>
        <th>나이</th>
    </tr>
    <tr>
        <td><%=human.name%></td>
        <td><%=human.age%></td>
    </tr>
    <tr>
        <td><%=student.getName()%></td>
        <td><%=student.getAge()%></td>
    </tr>
</table>

</body>
</html>
