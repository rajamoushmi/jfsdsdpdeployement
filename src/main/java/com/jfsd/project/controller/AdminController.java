package com.jfsd.project.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jfsd.project.model.Faculty;
import com.jfsd.project.model.Feedback;
import com.jfsd.project.model.Student;
import com.jfsd.project.repository.FacultyRepository;
import com.jfsd.project.repository.StudentRepository;
import com.jfsd.project.service.FacultyService;
import com.jfsd.project.service.FeedbackService;
import com.jfsd.project.service.StudentService;

import org.springframework.ui.Model;

@Controller
public class AdminController {

    @Autowired
    private FacultyRepository facultyRepository;

    @Autowired
    private StudentRepository studentRepository;
    
    @Autowired
    private StudentService studentService;
    
    @Autowired
    private FacultyService facultyService;

    @Autowired
    private FeedbackService feedbackService;
    
    @GetMapping("/adminHome")
    public String showAdminHome() {
        return "adminHome";  // This should match the name of your JSP file (without .jsp)
    }
    // Other methods

    @PostMapping("/admin/login")
    public String loginAdmin(@RequestParam("password") String password, Model model) {
        // Check if the entered password is 'admin123'
        if ("admin123".equals(password)) {
            // Redirect to admin home page upon successful login
            return "redirect:/adminHome"; 
        } else {
            // If password is incorrect, display an error message
            model.addAttribute("errorMessage", "Incorrect Password!");
            return "adminLogin"; // Redirect back to the login page
        }
    }

    @PostMapping("/removeUser")
    public String removeUser(@RequestParam("userId") String userId, Model model) {
        try {
            int id = Integer.parseInt(userId);
            if (studentRepository.existsById(id)) {
                studentRepository.deleteById(id); // Remove student
                model.addAttribute("successMessage", "Student removed successfully.");
            } else if (facultyRepository.existsById(id)) {
                facultyRepository.deleteById(id); // Remove faculty
                model.addAttribute("successMessage", "Faculty removed successfully.");
            } else {
                model.addAttribute("errorMessage", "User with ID " + id + " does not exist.");
            }
        } catch (NumberFormatException e) {
            model.addAttribute("errorMessage", "Invalid ID format.");
        }
        return "remove"; // Returning the same JSP page to show the success/error message
    }
    
    @PostMapping("/deleteStudent")
    public String deleteStudent(@RequestParam("studentId") int studentId) {
        studentService.deleteStudentById(studentId); // Call the delete method from service
        return "redirect:/viewstudents"; // Redirect back to the view students page
    }
    
   
    
    @GetMapping("/viewstudents")
    public ModelAndView viewStudents() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewstudents"); // Ensure no .jsp extension if using application.properties settings
        List<Student> students = studentService.getAllStudents();

        mv.addObject("studentlist", students);
        return mv;
    }
    
    
    
  
    @GetMapping("/viewfaculty")
    public ModelAndView viewFaculty() { 
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewfaculty");
        List<Faculty> facultys = facultyService.getAllFacultys();
        mv.addObject("facultylist", facultys);
        return mv;
    }

    // Delete faculty
    @PostMapping("/deleteFaculty")
    public String deleteFaculty(@RequestParam("facultyId") int facultyId) {
        facultyService.deleteFacultyById(facultyId);
        return "redirect:/viewfaculty";
    }

    @GetMapping("/createFeedback")
    public String showCreateFeedbackForm(Model model) {
        model.addAttribute("feedback", new Feedback());
        model.addAttribute("faculties", facultyService.getAllFacultys());  // Pass list of faculties to the form
        return "createFeedback"; // You can create a JSP or HTML form with this name
    }
   
//    @GetMapping("/admin/submitFeedback")
//    public String showFeedbackForm() {
//        return "fcreatefeedback"; // Return the JSP view name for the form
//    }

    @PostMapping("/submitFeedback")
    public String submitFeedback(
        @RequestParam("facultyId") int facultyId,
        @RequestParam("studentId") int studentId,
        @RequestParam Map<String, String> responses, // Captures all form data dynamically
        Model model
    ) {
        // Loop through feedback responses and save them
        responses.forEach((key, value) -> {
            if (key.startsWith("response_")) { // Filter only question responses
                int feedbackId = Integer.parseInt(key.substring(9)); // Extract question ID
                studentService.saveStudentResponse(studentId, facultyId, feedbackId, value);
            }
        });

        model.addAttribute("successMessage", "Feedback submitted successfully!");
        return "redirect:/Studenthome.jsp"; // Redirect to a student home page or success page
    }

    // Method to view feedback questions for a faculty
    @GetMapping("/viewFeedback/{facultyId}")
    public String viewFeedback(@PathVariable Integer facultyId, Model model) {
        List<Feedback> feedbackList = feedbackService.getFeedbackForFaculty(facultyId);
        model.addAttribute("feedbackList", feedbackList);
        return "viewFeedback"; // You can create a JSP or HTML page for viewing feedback questions
    }
    
    
    
}
