package com.jfsd.project.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "admin_table")
public class Admin {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto increment
    @Column(name = "admin_id")
    private int id;

    @Column(name = "unique_admin_id", unique = true, nullable = false)
    private String uniqueAdminId = "admin123"; // Static unique ID for the admin

    @Column(name = "login_time")
    private LocalDateTime loginTime; // Timestamp for login

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUniqueAdminId() {
        return uniqueAdminId;
    }

    public void setUniqueAdminId(String uniqueAdminId) {
        this.uniqueAdminId = uniqueAdminId;
    }

    public LocalDateTime getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(LocalDateTime loginTime) {
        this.loginTime = loginTime;
    }

    // You can add additional methods or logic for login-related actions
}
