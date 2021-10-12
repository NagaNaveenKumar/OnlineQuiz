package com.quiz.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.quiz.security.model.Admin;
import com.quiz.security.model.Expert;

public interface AdminRepository extends JpaRepository<Admin, Integer> {
	
	@Query("from Admin where admin_name=?1 and admin_password=?2")
	Admin findByNameAndPassword(String name,String password);
}
