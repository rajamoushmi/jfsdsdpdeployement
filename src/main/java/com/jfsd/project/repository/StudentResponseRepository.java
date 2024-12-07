package com.jfsd.project.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.model.StudentResponse;

@Repository
public interface StudentResponseRepository extends JpaRepository<StudentResponse, Integer> {
	
	List<StudentResponse> findByFacultyId(int facultyId);
}
