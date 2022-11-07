/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.assignment;

/**
 *
 * @author sonnt
 */
public class Account {
    private String username;
    private String password;
    private String displayname;
    private Student student;
    private Lecturer lecture;
    private boolean isstudent;

    public Lecturer getLecture() {
        return lecture;
    }

    public void setLecture(Lecturer lecture) {
        this.lecture = lecture;
    }
    

    public boolean isIsstudent() {
        return isstudent;
    }

    public void setIsstudent(boolean isstudent) {
        this.isstudent = isstudent;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDisplayname() {
        return displayname;
    }

    public void setDisplayname(String displayname) {
        this.displayname = displayname;
    }
    
}
