package com.ragnbone.Server.models;

import jakarta.persistence.*;
import lombok.Data;
import org.springframework.stereotype.Indexed;

@Entity
@Table(name="user")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "userID")
    private int userID;

    @Column(name = "fullname")
    private String fullname;

    @Column(name = "phone")
    private String phone;

    @Column(name = "password")
    private String password;

    @Column(name = "roleID")
    private int roleID;

    public User() {

    }

    public User(
        int userID,
        String fullname,
        String phone,
        String password,
        int roleID
    ) {
        this.userID = userID;
        this.fullname = fullname;
        this.phone = phone;
        this.password = password;
        this.roleID = roleID;
    }


    public int getUserID() {
        return this.userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getFullname() {
        return this.fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleID() {
        return this.roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "User{" +
                "userID=" + userID +
                ", fullname='" + fullname + '\'' +
                ", phone='" + phone + '\'' +
                ", password='" + password + '\'' +
                ", roleID='" + roleID + '\'' +
                '}';
    }
}
