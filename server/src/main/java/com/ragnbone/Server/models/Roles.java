package com.ragnbone.Server.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="roles")
@Data
public class Roles {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;

    @Column(name = "roleDesc")
    private String roleDesc;

    public Roles() {

    }

    public Roles(int ID, String roleDesc) {
        this.ID = ID;
        this.roleDesc = roleDesc;
    }


    public int getID() {
        return this.ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getRoleDesc() {
        return this.roleDesc;
    }

    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }

    @Override
    public String toString() {
        return "Roles{" +
                "ID=" + ID +
                ", roleDesc='" + roleDesc + '\'' +
                '}';
    }
    
}
