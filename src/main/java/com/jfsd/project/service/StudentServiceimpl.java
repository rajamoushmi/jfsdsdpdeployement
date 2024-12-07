package com.jfsd.project.service;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Service;

import com.jfsd.project.model.Student;
import com.jfsd.project.model.StudentResponse;
import com.jfsd.project.repository.StudentRepository;
import com.jfsd.project.repository.StudentResponseRepository;
	@Service
	public class StudentServiceimpl implements StudentService {

	    @Autowired
	    private StudentRepository studentRepository;
	    
	    @Autowired
	    private StudentResponseRepository studentResponseRepository;

	    @Override
	    public String registerStudent(Student student) {
	        studentRepository.save(student);
	        return "Student registered successfully!";
	    }

	    @Override
	    public Student checkStudentLogin(String email, String password) {
	        return studentRepository.checkStudentLogin(email, password);
	    }	
	    
	    @Override
	    public List<Student> getAllStudents() {
	        return studentRepository.findAll(); // Provide the actual implementation
	    }
	    @Override
	    public void deleteStudentById(int id) {
	        studentRepository.deleteById(id); // Delete student by ID
	    }
	    
	    @Override
	    public void saveStudentResponse(int studentId, int facultyId, int feedbackId, String selectedOption) {
	        StudentResponse response = new StudentResponse();
	        
	        // Set student ID, faculty ID, feedback question, and selected option
	        response.setStudentId(studentId);
	        response.setFacultyId(facultyId);
	        response.setFeedbackId(feedbackId);
	        response.setSelectedOption(selectedOption);
	        
	        // Save to database
	        studentResponseRepository.save(response);
	    }

		@Override
		public Optional<Student> getStudentById(int id) {
			return studentRepository.findById(id);
		}
		

}
