package com.jfsd.project.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.jfsd.project.model.Faculty;
import com.jfsd.project.model.Feedback;
import com.jfsd.project.model.StudentResponse;
import com.jfsd.project.repository.FacultyRepository;
import com.jfsd.project.repository.FeedbackOptionRepository;
import com.jfsd.project.repository.FeedbackRepository;
import com.jfsd.project.service.FeedbackService;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackOptionRepository feedbackOptionRepository;

    @Autowired
    private FacultyRepository facultyRepository;
    
    @Autowired
    private FeedbackService feedbackService;

    @PostMapping("/admin/submitFeedback")
    public String submitFeedback(@RequestParam("facultyId") int facultyId,
                                 @RequestParam("questions") List<String> questions,
                                 @RequestParam("opt1")  String opt1, @RequestParam("opt2")  String opt2,@RequestParam("opt3")  String opt3,@RequestParam("opt4")  String opt4,// Nested list for options
                                 Model model) {

        // Check if the faculty ID exists
        Faculty faculty = facultyRepository.findById(facultyId).orElse(null);
        if (faculty == null) {
            model.addAttribute("errorMessage", "Faculty ID does not exist. Please try again.");
            return "error"; // Return an error view (e.g., error.jsp)
        }

        // Process feedback submission for the faculty
        for (int i = 0; i < questions.size(); i++) {
            Feedback feedback = new Feedback();
            feedback.setFaculty(faculty);
            feedback.setQuestion(questions.get(i));
            feedback.setOpt1(opt1);
            feedback.setOpt2(opt2);
            feedback.setOpt3(opt3);
            feedback.setOpt4(opt4);
            feedbackService.saveFeedbackQuestion(feedback); // Save feedback question            
        }

        // Add success message to the model
        model.addAttribute("successMessage", "Feedback submitted successfully!");
        return "fcreatefeedback"; // Return a success view (e.g., success.jsp)
    }
    @GetMapping("/feedbacks")
    public String viewFeedbacks(Model model) {
        List<Feedback> feedbackList = feedbackService.getAllFeedbackQuestions();
        model.addAttribute("feedbackList", feedbackList);
        return "feedbacks";
    }
    
    @GetMapping("/fviewanswers")
    public String fviewfeedback(@RequestParam("facultyId") int facultyId, Model model) {
        // Fetch feedback responses by facultyId
        List<StudentResponse> feedbackresp = feedbackService.getAllFeedbackAnswers(facultyId);

        // Add responses to the model
        model.addAttribute("responses", feedbackresp);

        return "fviewanswers"; 
    }
    
    @GetMapping("/fviewall")
    public String fviewfeedback( Model model) {
        List<StudentResponse> feedbackresp = feedbackService.getAllFeedback();
        model.addAttribute("feedbackresp", feedbackresp);
        return "fviewall"; 
    }

    
}