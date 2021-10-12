package com.quiz.security.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.quiz.security.model.Results;

public interface ResultsRepository extends JpaRepository<Results, Integer> {

}
