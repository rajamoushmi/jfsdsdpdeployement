package com.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jfsd.project.model.Feedback;

import java.util.List;

@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, Integer> {

    @Query("SELECT f FROM Feedback f WHERE f.faculty.id = ?1")
    List<Feedback> findByFacultyId(Integer facultyId);
    
    // Add more queries as necessary, e.g., for student feedback
}
