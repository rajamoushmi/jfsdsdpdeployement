package com.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.project.model.Faculty;

import java.util.List;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer> {

    @Query("SELECT f FROM Faculty f WHERE f.email = ?1 AND f.password = ?2")
    Faculty checkFacultyLogin(String email, String password);

    @Query("SELECT f FROM Faculty f JOIN f.years y WHERE y = ?1")
    List<Faculty> findFacultiesByYear(String year);
}
