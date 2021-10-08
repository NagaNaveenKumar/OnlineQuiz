package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface QuestionsRepository extends JpaRepository<com.example.beans.Questions, Integer> {

}
