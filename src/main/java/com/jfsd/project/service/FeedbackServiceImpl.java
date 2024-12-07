package com.jfsd.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.model.Feedback;
import com.jfsd.project.model.StudentResponse;
import com.jfsd.project.repository.FeedbackRepository;
import com.jfsd.project.repository.StudentResponseRepository;

import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService {

    @Autowired
    private FeedbackRepository feedbackRepository;
    
    @Autowired
    private StudentResponseRepository studentResponseRepositpory;
    
    // Method to create and save a new feedback question
    @Override
    public void saveFeedbackQuestion(Feedback feedback) {
         feedbackRepository.save(feedback);
    }

    // Method to retrieve feedback questions for a particular faculty
    @Override
    public List<Feedback> getAllFeedbackQuestions() {
        return feedbackRepository.findAll(); // Fetch all feedback questions from the database
    }

	@Override
	public List<Feedback> getFeedbackForFaculty(Integer facultyId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentResponse> getAllFeedbackAnswers(Integer facultyId) {
		// TODO Auto-generated method stub
		return studentResponseRepositpory.findByFacultyId(facultyId);
	}

	@Override
	public List<StudentResponse> getAllFeedback() {
		// TODO Auto-generated method stub
		return studentResponseRepositpory.findAll();
	}

	
	
}
