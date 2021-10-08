package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.beans.Student;

public interface StudentRepository extends JpaRepository<Student, Integer>{
	
}
