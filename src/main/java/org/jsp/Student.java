package org.jsp;

public class Student {

    private String name;
    private int age;

    public Student() {
        name = "성춘향";
        age = 16;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    @Override
    public String toString() {
        return "Student{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }
}
