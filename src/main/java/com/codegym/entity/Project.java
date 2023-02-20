package com.codegym.entity;

import java.sql.Date;

public class Project {
    private int Id;
    private String name;
    private String description;
    private boolean process;
    private Date startDay;
    private Date endDay;

    public Project() {}

    public Project(String name, String description, boolean process, Date startDay, Date endDay) {
        this.name = name;
        this.description = description;
        this.process = process;
        this.startDay = startDay;
        this.endDay = endDay;
    }

    public Project(int id, String name, String description, boolean process, Date startDay, Date endDay) {
        Id = id;
        this.name = name;
        this.description = description;
        this.process = process;
        this.startDay = startDay;
        this.endDay = endDay;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isProcess() {
        return process;
    }

    public void setProcess(boolean process) {
        this.process = process;
    }

    public Date getStartDay() {
        return startDay;
    }

    public void setStartDay(Date startDay) {
        this.startDay = startDay;
    }

    public Date getEndDay() {
        return endDay;
    }

    public void setEndDay(Date endDay) {
        this.endDay = endDay;
    }

    @Override
    public String toString() {
        return "Projects{" +
                "Id=" + Id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", process=" + process +
                ", startDay=" + startDay +
                ", endDay=" + endDay +
                '}';
    }
}