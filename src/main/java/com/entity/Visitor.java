package com.entity;

import java.util.Date;

/**
 * @ClassName Vistor
 * @Description TODO
 * @Author YHT
 * @Date 2021/7/9 21:31
 */
public class Visitor {
    private Integer id;
    private String name;
    private String email;
    private Integer identity;
    private String telPhone;
    private Date visitTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdentity() {
        return identity;
    }

    public void setIdentity(Integer identity) {
        this.identity = identity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelPhone() {
        return telPhone;
    }

    public void setTelPhone(String telPhone) {
        this.telPhone = telPhone;
    }

    public Date getVisitTime() {
        return visitTime;
    }

    public void setVisitTime(Date visitTime) {
        this.visitTime = visitTime;
    }

    @Override
    public String toString() {
        return "Visitor{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", telPhone='" + telPhone + '\'' +
                ", visitTime=" + visitTime +
                '}';
    }
}