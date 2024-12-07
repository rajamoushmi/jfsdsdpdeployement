package com.jfsd.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.model.Faculty;
import com.jfsd.project.model.Feedback;
import com.jfsd.project.repository.FacultyRepository;
import com.jfsd.project.repository.FeedbackRepository;

import java.util.List;
import java.util.Optional;

@Service
public class FacultyServiceImpl implements FacultyService {

    @Autowired
    private FacultyRepository facultyRepository;
    
    @Autowired
    private FeedbackRepository feedbackRepository;

    @Override
    public String registerFaculty(Faculty faculty) {
        // Save the faculty member in the database
        facultyRepository.save(faculty);
        return "Faculty registered successfully.";
    }

    @Override
    public Faculty checkFacultyLogin(String email, String password) {
        // Validate email and password using the custom query
        return facultyRepository.checkFacultyLogin(email, password);
    }

    @Override
    public List<Faculty> getFacultiesByYear(String year) {
        // Retrieve faculties associated with the given year
        return facultyRepository.findFacultiesByYear(year);
    }

    @Override
    public List<Faculty> getAllFacultys() {
        return facultyRepository.findAll();
    }

    // Find faculty by ID
    @Override
    public Faculty findById(Integer id) {
        return facultyRepository.findById(id).orElse(null);
    }

    // Delete faculty by ID
    @Override
    public void deleteFacultyById(int id) {
        facultyRepository.deleteById(id);
    }
    
    public void saveFeedbackQuestion(Feedback feedback) {
        feedbackRepository.save(feedback);  // Saves the feedback in the database
    }
    
    @Override
    public List<Feedback> getAllFeedbackQuestions() {
        return feedbackRepository.findAll(); // Fetch all feedback questions from the database
    }

	@Override
	public List<Feedback> getAllresp() {
		// TODO Auto-generated method stub
		 return feedbackRepository.findAll();
	}
}
