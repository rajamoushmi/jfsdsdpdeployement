package com.jfsd.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.project.model.Faculty;
import com.jfsd.project.model.Student;
import com.jfsd.project.model.StudentResponse;
import com.jfsd.project.service.FacultyService;
import com.jfsd.project.service.FeedbackService;
import com.jfsd.project.service.StudentResponseService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.util.List;

@Controller
public class FacultyController {

    @Autowired
    private FacultyService facultyService;

    @Autowired
    private FeedbackService feedbackService;
    
    @Autowired
    private StudentResponseService studentResponseService;

    @GetMapping("/facultyreg")
    public ModelAndView facultyRegistration() {
        return new ModelAndView("facultyreg");
    }

    @PostMapping("/insertfaculty")
    public ModelAndView insertFaculty(HttpServletRequest request) {
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");
        String[] yearsArray = request.getParameterValues("years");
        ModelAndView mv = new ModelAndView("regsuccessf");
        
        if (!email.endsWith("@gmail.com")) {
            mv.setViewName("facultyreg"); // Redirect back to the registration page
            mv.addObject("errorMessage", "Email must be a valid Gmail address (ending with @gmail.com).");
            return mv;
        }
        String passwordPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{5,10}$";
        if (!password.matches(passwordPattern)) {
            mv.setViewName("facultyreg");
            mv.addObject("errorMessage", 
                "Password must contain 5-10 characters, with at least one uppercase letter, one lowercase letter, one digit, and one special character.");
            return mv;
        }
        if (firstName.length() < 5) {
            mv.setViewName("facultyreg");
            mv.addObject("errorMessage", "First Name must be at least 5 characters long.");
            return mv;
        }

        // Last Name validation
        if (lastName.length() < 5 || lastName.length() > 20) {
            mv.setViewName("facultyreg");
            mv.addObject("errorMessage", "Last Name must be between 5 and 20 characters long.");
            return mv;
        }
        Faculty faculty = new Faculty();
        faculty.setFirstName(firstName);
        faculty.setLastName(lastName);
        faculty.setEmail(email);
        faculty.setPassword(password);
        faculty.setYears(List.of(yearsArray));

        String message = facultyService.registerFaculty(faculty);
       
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/facultylogin")
    public ModelAndView facultyLogin() {
        return new ModelAndView("facultylogin");
    }

    @PostMapping("/checkfacultylogin")
    public ModelAndView checkFacultyLogin(HttpServletRequest request, HttpSession session) {
        String email = request.getParameter("email");
        String password = request.getParameter("pwd");

        Faculty faculty = facultyService.checkFacultyLogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (faculty != null) {
            // Store the faculty object in the session
            session.setAttribute("faculty", faculty);

            // Redirect to the faculty home page
            mv.setViewName("facultyHome");
            mv.addObject("fullName", faculty.getFirstName() + " " + faculty.getLastName());
            mv.addObject("initial", faculty.getFirstName().substring(0, 1).toUpperCase());
        } else {
            mv.setViewName("facultyloginfail");
            mv.addObject("message", "Invalid email or password.");
        }

        return mv;
    }


//    @PostMapping("/faculty/submitFeedback")
//    public String submitFeedback(@RequestParam("facultyId") int facultyId, 
//                                 @RequestParam("questions") List<String> questions, 
//                                 Model model) {
//        // Process feedback submission for faculty
//        for (String question : questions) {
//            Feedback feedback = new Feedback();
//            Faculty faculty = new Faculty();
//            faculty.setId(facultyId); // Assuming Faculty ID is provided
//
//            feedback.setFaculty(faculty);
//            feedback.setQuestion(question);
//            feedbackService.saveFeedbackQuestion(feedback);  // Save feedback question
//        }
//
//       // model.addAttribute("successMessage", "Feedback submitted successfully!");
//        return "redirect:/facultyHome";  // Redirect to a faculty home page or wherever you want
//    }
    
    @GetMapping("/viewresp")
    public ModelAndView viewStudents() {
        List<StudentResponse> studentResponses = studentResponseService.getAllreponses();
        System.out.println("Student responses from service: " + studentResponses); // Debugging line

        ModelAndView mv = new ModelAndView("viewstudents");
        mv.addObject("studentresplist", studentResponses);
        return mv;
    }

    
    
}
