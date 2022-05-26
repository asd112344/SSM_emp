package com.entity;

/**
 * @ClassName TestEntity
 * @Description TODO
 * @Author YHT
 * @Date 2021/5/31 15:16
 */
public class TestEntity {
    private Integer id;
    private String num;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "TestEntity{" +
                "id=" + id +
                ", num='" + num + '\'' +
                '}';
    }
}