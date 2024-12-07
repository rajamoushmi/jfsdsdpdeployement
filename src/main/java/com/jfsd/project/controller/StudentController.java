package com.jfsd.project.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.project.model.Student;
import com.jfsd.project.service.FacultyService;
import com.jfsd.project.service.FeedbackService;
import com.jfsd.project.service.StudentService;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService; // Service for student operations
    @Autowired
    private FacultyService FacultyService;
    @Autowired
private FeedbackService feedbackService;

    // Home Page
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("index");
        return mv;
    }

    // Student Registration
    @GetMapping("/studentreg")
    public ModelAndView studentRegistration() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @PostMapping("/insertstudent")
    public ModelAndView insertStudent(HttpServletRequest request) {
        String firstName = request.getParameter("sfirstname");
        String lastName = request.getParameter("slastname");
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");
        String syear = request.getParameter("syear");

        ModelAndView mv = new ModelAndView();

        if (!email.endsWith("@gmail.com")) {
            mv.setViewName("studentreg");
            mv.addObject("errorMessage", "Email must be a valid Gmail address (ending with @gmail.com).");
            return mv;
        }

        // Password validation
        String passwordPattern = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{5,10}$";
        if (!password.matches(passwordPattern)) {
            mv.setViewName("studentreg");
            mv.addObject("errorMessage", 
                "Password must be 5-10 characters long, with at least one uppercase letter, one lowercase letter, one digit, and one special character.");
            return mv;
        }

        // First Name validation
        if (firstName.length() < 3) {
            mv.setViewName("studentreg");
            mv.addObject("errorMessage", "First Name must be at least 5 characters long.");
            return mv;
        }

        // Last Name validation
        if (lastName.length() < 3 || lastName.length() > 20) {
            mv.setViewName("studentreg");
            mv.addObject("errorMessage", "Last Name must be between 5 and 20 characters long.");
            return mv;
        }

        
        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setEmail(email);
        student.setPassword(password);
        student.setSyear(syear);


        String message = studentService.registerStudent(student);
       
        mv.setViewName("regsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("/studentlogin")
    public ModelAndView studentLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }

    @PostMapping("/checkstudentlogin")
    public ModelAndView checkStudentLogin(HttpServletRequest request, HttpSession session) {
        String email = request.getParameter("semail");
        String password = request.getParameter("spwd");

        Student student = studentService.checkStudentLogin(email, password);
        ModelAndView mv = new ModelAndView();

        if (student != null) {
            // Store the student object in the session
            session.setAttribute("student", student);

            // Redirect to the student home page
            mv.setViewName("Studenthome");
            mv.addObject("fullName", student.getFirstName() + " " + student.getLastName());
            mv.addObject("initial", student.getFirstName().substring(0, 1).toUpperCase());
        } else {
            mv.setViewName("studentloginfail");
            mv.addObject("errorMessage", "Your error message here");

        }

        return mv;
    }


    @GetMapping("/studentdashboard")
    public ModelAndView studentHome(HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        ModelAndView mv = new ModelAndView("studenthome");
        mv.addObject("student", student);
        return mv;
    }
    
}
