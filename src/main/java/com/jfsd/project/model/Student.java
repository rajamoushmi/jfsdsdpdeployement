package com.jfsd.project.model;

import jakarta.persistence.*;

@Entity
@Table(name = "student_tablee")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto increment
    @Column(name = "student_id")
    private int id;

    @Column(name = "student_first_name", nullable = false, length = 100)
    private String firstName;

    @Column(name = "student_last_name", nullable = false, length = 100)
    private String lastName;

    @Column(name = "student_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "student_password", nullable = false, length = 100)
    private String password;
    
    @Column(name = "student_year", nullable = false, length = 100)
    private String syear;


    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	public String getSyear() {
		return syear;
	}

	public void setSyear(String syear) {
		this.syear = syear;
	}
    
}
