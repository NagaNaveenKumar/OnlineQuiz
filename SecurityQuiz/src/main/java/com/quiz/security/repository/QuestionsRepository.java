package com.quiz.security.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.quiz.security.model.Questions;


public interface QuestionsRepository extends JpaRepository<Questions, Integer> {
	
	@Query("from Questions where sub_id=?1")
	List<Questions> getAllQuestionsBySubId(int sub_id);
	
	@Query("from Questions where ques_id=?1")
	Questions getQuestionsById(int ques_id);

}
