package com.example.fps.model;

import javax.persistence.*;

@Entity
@Table(name = "task")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    private String taskName;
    private String description;
    private String category;
    private String priority;

    @ManyToOne(fetch = FetchType.EAGER)
    private User currentUser;

    public Task() {
    }

    public Task(String taskName, String description, User currentUser, String category, String priority) {
        this.taskName = taskName;
        this.description = description;
        this.currentUser = currentUser;
        this.category = category;
        this.priority = priority;
    }

    public String getCurrentUserName() {
        return currentUser != null ? currentUser.getUsername() : "No user";
    }

    public User getCurrentUser() {
        return currentUser;
    }

    public void setCurrentUser(User currentUser) {
        this.currentUser = currentUser;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getPriority() {
        return priority;
    }

    public void setPriority(String priority) {
        this.priority = priority;
    }
}
