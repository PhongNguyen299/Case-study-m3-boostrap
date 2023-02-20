package com.codegym.entity;

public class Department {
    private int Id;
    private String name;
    private int IdProjects;

    public Department() {}

    public Department(String name, int idProjects) {
        this.name = name;
        IdProjects = idProjects;
    }

    public Department(int id, String name, int idProjects) {
        Id = id;
        this.name = name;
        IdProjects = idProjects;
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

    public int getIdProjects() {
        return IdProjects;
    }

    public void setIdProjects(int idProjects) {
        IdProjects = idProjects;
    }

    @Override
    public String toString() {
        return "Department{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", IdProjects=" + IdProjects +
                '}';
    }
}