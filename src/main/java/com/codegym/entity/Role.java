package com.codegym.entity;

public class Role {
    private int Id;
    private String name;

    public Role() {}

    public Role(String name) {
        this.name = name;
    }

    public Role(int id, String name) {
        Id = id;
        this.name = name;
    }

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Roles{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                '}';
    }
}