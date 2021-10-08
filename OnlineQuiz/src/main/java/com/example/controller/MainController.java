package com.example.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.beans.Admin;
import com.example.beans.Expert;
import com.example.beans.QUestionsDuplicate;
import com.example.beans.Questions;
import com.example.beans.Student;
import com.example.beans.Subject;
import com.example.repository.AdminRepository;
import com.example.repository.ExpertRepository;
import com.example.repository.QuestionsRepository;
import com.example.repository.StudentRepository;
import com.example.repository.SubjectRepository;


@Controller
public class MainController {
	
	@Autowired
	private SubjectRepository subrepo;
	
	@Autowired
	private QuestionsRepository quesrepo;
	
	@Autowired
	private ExpertRepository expertrepo;
	
	@Autowired
	private AdminRepository adminrepo;
	
	@Autowired
	private StudentRepository stdrepo;
	
	@RequestMapping("/")
	public String home() {
		System.out.println("admin");
		return "login";
	}
	@RequestMapping("/register")
	public String register() {
		System.out.println("admin");
		return "register";
	}
	
	@GetMapping("/subjects")
	public ModelAndView getSubjects() {
		List<Subject> s=(List<Subject>) subrepo.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("subjects",s);
		mv.setViewName("subjects");
		System.out.println(mv.getModel());
		return mv;
	}
	
	@PostMapping("/addsubject")
	public Subject addSubject(@RequestBody Subject s) {
		subrepo.save(s);
		System.out.println(s.getSubId());
		return s;
	}
	
	@RequestMapping("/addQuestions")
	public ModelAndView addQuestions(@RequestBody QUestionsDuplicate q) {
		Questions ques=new Questions();
		ques.setSubId(q.getSubId());
		ques.setQuesDescription(q.getQuesDescription());
		ques.setOption1(q.getOption1());
		ques.setOption2(q.getOption2());
		ques.setOption3(q.getOption3());
		ques.setOption4(q.getOption4());
		ques.setCorrectOption(q.getCorrectOption());
		quesrepo.save(ques);
		System.out.println(ques.getQuesId());
		return new ModelAndView("redirect:/subjects");
	}
	
	/*Expert Module*/
	
	@PostMapping("/expert-login")
	public void checkExpert(@RequestParam("name") String name,@RequestParam("password") String password) {
		Expert e=expertrepo.findByNameAndPassword(name, password);
		if(e!=null) {
			System.out.println(e.getExpert_id());
		}
	}
	
	/*Admin Module*/
	
	@PostMapping("/admin-login")
	public void checkAdmin(@RequestParam("name") String name,@RequestParam("password") String password) {
		Admin a=adminrepo.findByNameAndPassword(name, password);
		if(a!=null) {
			System.out.println(a.getAdmin_id());
		}
	}
	
	/*Add Expert*/
	@PostMapping("/add-expert")
	public void addExpert(@RequestParam("name") String name,@RequestParam("password") String password) {
		Expert e=new Expert();
		e.setExpert_name(name);
		e.setExpert_password(password);
		expertrepo.save(e);
	}
	
	/*Delete Expert*/
	@GetMapping("/delete-expert")
	public void deleteExpert(@RequestParam("id")int id) {
		expertrepo.deleteById(id);
	}
	
	/*Add Student*/
	public void addStudent(@RequestParam("name") String name,@RequestParam("password") String password) {
		Student s=new Student();
		s.setStd_name(name);
		s.setStd_password(password);
		stdrepo.save(s);
	}
	
	/*Delete Student*/
	@GetMapping("/delete-student")
	public void deleteStudent(@RequestParam("id")int id) {
		stdrepo.deleteById(id);
	}
	
}
