package com.example.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.beans.Questions;


public interface QuestionsRepository extends JpaRepository<Questions, Integer> {
	
	@Query("from Questions where sub_id=?1")
	List<Questions> getAllQuestionsBySubId(int ques_id);

}
