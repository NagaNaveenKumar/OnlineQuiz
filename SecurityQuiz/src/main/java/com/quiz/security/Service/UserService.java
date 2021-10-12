package com.quiz.security.Service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.quiz.security.model.User;
import com.quiz.security.web.dto.UserRegistrationDto;

public interface UserService extends UserDetailsService {

    User findByEmail(String email);

    User save(UserRegistrationDto registration);
}