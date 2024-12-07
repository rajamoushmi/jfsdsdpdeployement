package com.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jfsd.project.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
    // You can add custom query methods if needed
}
