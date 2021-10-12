package com.quiz.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.quiz.security.model.Expert;

public interface ExpertRepository extends JpaRepository<Expert, Integer> {
	
	@Query("from Expert where expert_name=?1 and expert_password=?2")
	Expert findByNameAndPassword(String name,String password);
}
