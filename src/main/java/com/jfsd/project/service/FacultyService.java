package com.jfsd.project.service;

import java.util.List;

import com.jfsd.project.model.Faculty;
import com.jfsd.project.model.Feedback;

public interface FacultyService {

    // Register a faculty member
    String registerFaculty(Faculty faculty);

    // Validate login credentials
    Faculty checkFacultyLogin(String email, String password);

    // Get faculties by year
    List<Faculty> getFacultiesByYear(String year);

    // Find a faculty by ID
    Faculty findById(Integer id);
    
    public List<Faculty> getAllFacultys() ;
    
    public List<Feedback> getAllresp() ;
    
    void deleteFacultyById(int id); 
    public void saveFeedbackQuestion(Feedback feedback) ;
    
    public List<Feedback> getAllFeedbackQuestions();


}
