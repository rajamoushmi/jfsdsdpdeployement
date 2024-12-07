package com.jfsd.project.service;

import java.util.List;

import com.jfsd.project.model.Feedback;
import com.jfsd.project.model.StudentResponse;

public interface FeedbackService {

    // Method to save a feedback question
    void saveFeedbackQuestion(Feedback feedback);

    // Method to retrieve all feedback questions for a specific faculty
    List<Feedback> getFeedbackForFaculty(Integer facultyId);
    public List<Feedback> getAllFeedbackQuestions();
    public List<StudentResponse> getAllFeedbackAnswers(Integer facultyId);
    public List<StudentResponse> getAllFeedback();
}
