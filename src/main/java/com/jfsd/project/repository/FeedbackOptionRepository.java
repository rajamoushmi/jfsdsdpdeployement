package com.jfsd.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jfsd.project.model.FeedbackOption;

@Repository
public interface FeedbackOptionRepository extends JpaRepository<FeedbackOption, Integer> {
    // You can add custom queries here if needed, e.g., find by feedback_id.
}
