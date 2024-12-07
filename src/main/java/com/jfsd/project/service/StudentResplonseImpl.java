package com.jfsd.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jfsd.project.model.StudentResponse;
import com.jfsd.project.repository.StudentResponseRepository;

@Service

public class StudentResplonseImpl implements StudentResponseService{
	
	@Autowired
	private StudentResponseRepository srr;

	@Override
	public List<StudentResponse> getAllreponses() {
		  List<StudentResponse> responses = srr.findAll();
	        System.out.println("Responses fetched: " + responses); // Debugging line
	        return responses;
	}

}
