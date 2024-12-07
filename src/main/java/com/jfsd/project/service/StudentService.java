package com.jfsd.project.service;

import java.util.List;
import java.util.Optional;

import com.jfsd.project.model.Student;

public interface StudentService {

    public String registerStudent(Student student);
    public Student checkStudentLogin(String email, String password);
    public List<Student> getAllStudents() ;
    void deleteStudentById(int id); // New method
    void saveStudentResponse(int studentId, int facultyId, int feedbackId, String selectedOption);

    public Optional<Student> getStudentById(int id);

}

