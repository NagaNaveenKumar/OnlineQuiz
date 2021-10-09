package com.example.controller;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.beans.Admin;
import com.example.beans.Expert;
import com.example.beans.QUestionsDuplicate;
import com.example.beans.Questions;
import com.example.beans.Results;
import com.example.beans.Student;
import com.example.beans.Subject;
import com.example.repository.AdminRepository;
import com.example.repository.ExpertRepository;
import com.example.repository.QuestionsRepository;
import com.example.repository.ResultsRepository;
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
	
	@Autowired
	private ResultsRepository resrepo;
	
	
	@GetMapping("/subjects/{std_id}")
	public ModelAndView getSubjects(@PathVariable("std_id") int std_id) {
		List<Subject> s=(List<Subject>) subrepo.findAll();
		ModelAndView mv=new ModelAndView();
		mv.addObject("std_id",std_id);
		mv.addObject("subjects",s);
		mv.setViewName("subjects");
		System.out.println(mv.getModel());
		return mv;
	}
	
	@PostMapping("/addsubject")
	public ModelAndView addSubject(@RequestBody Subject s) {
		subrepo.save(s);
		System.out.println(s.getSubId());
		return new ModelAndView("redirect:/subjects");
	}
	
	@RequestMapping("/addQuestions")
	public ModelAndView addQuestions(@RequestBody QUestionsDuplicate q) {
		Questions ques=new Questions();
		ques.setSub_id(q.getSubId());
		ques.setQues_description(q.getQuesDescription());
		ques.setOption1(q.getOption1());
		ques.setOption2(q.getOption2());
		ques.setOption3(q.getOption3());
		ques.setOption4(q.getOption4());
		ques.setCorrect_option(q.getCorrectOption());
		quesrepo.save(ques);
		System.out.println(ques.getQues_id());
		return new ModelAndView("redirect:/subjects");
	}
	
	/*Student Module*/
	
	@PostMapping("/student/register")
	public ModelAndView registerStudent(@RequestParam("name") String name,@RequestParam("email") String email,@RequestParam("password") String password) {
		ModelAndView mv=new ModelAndView();
		Student s=new Student();
		s.setStd_name(name);
		s.setStd_password(password);
		s.setEmail(email);
		stdrepo.save(s);
		mv.setViewName("subjects");
		return mv;
	}
	
	@GetMapping("/student/login")
	public ModelAndView studentLogin() {
		ModelAndView mv=new ModelAndView();
		mv.addObject("message", "");
		mv.setViewName("login");
		return mv;
	}
	
	@GetMapping("/check/student/login")
	public ModelAndView checkloginStudent(@RequestParam("name") String name,@RequestParam("password") String password) {
		ModelAndView mv=new ModelAndView();
		Student s=stdrepo.findByNameAndPassword(name, password);
		System.out.println(s);
		if(s!=null) {
			ModelAndView modelandview=new ModelAndView("redirect:/subjects/"+s.getStd_id());
			return modelandview;
		}else {
			mv.addObject("message","Invalid username/password");
			mv.setViewName("login");
		}
		return mv;
	}
	
	@GetMapping("/submitquiz")
	public ModelAndView getResult() {	
		ModelAndView mv=new ModelAndView();
		return mv;
	}

//	@GetMapping("/getQuestions/{sub_id}")
//	public ModelAndView getQuestions(@PathVariable int sub_id) {
//		List<Questions> quests=quesrepo.getAllQuestionsBySubId(sub_id);
//		ModelAndView mv=new ModelAndView();
//		mv.addObject("sub_id",sub_id);
//		mv.addObject("questions", quests);
//		mv.setViewName("questions");
//		return mv;
//	}
	
	@GetMapping("/getQuestions/{sub_id}")
	public ModelAndView getQuestions(@PathVariable int sub_id,@RequestParam("studentId") int std_id) {
		List<Questions> quests=quesrepo.getAllQuestionsBySubId(sub_id);
		ModelAndView mv=new ModelAndView();
		mv.addObject("std_id", std_id);
		mv.addObject("sub_id",sub_id);
		mv.addObject("questions", quests);
		mv.setViewName("questions");
		return mv;
	}
	
	@GetMapping("/getResult")
	public ModelAndView getResult(HttpServletRequest req) {
//		int std_id=Integer.parseInt(req.getParameter("studentId"));
//		int sub_id=Integer.parseInt(req.getParameter("subjectId"));
		ModelAndView mv=new ModelAndView();
		String []questionIds=req.getParameterValues("questionId");
		double result=0.0;
		for(String questionId:questionIds) {
			int ques_id=Integer.parseInt(questionId);
			Questions q=quesrepo.getQuestionsById(ques_id);
			String selectedOption=req.getParameter("question_"+questionId);
			String correctOption=q.getCorrect_option();
			System.out.println("selectedOption:"+selectedOption);
			System.out.println("correctOption:"+correctOption);
			if(selectedOption.equals(correctOption)) {
				result+=1.0;
			}else {
				result-=0.25;
			}
		}
		mv.addObject("result",result);
		mv.setViewName("results");
		return mv;
	}
	
	
	
	/*Expert Module*/
	
	@PostMapping("/expert/login")
	public ModelAndView checkExpert(@RequestParam("name") String name,@RequestParam("password") String password) {
		Expert e=expertrepo.findByNameAndPassword(name, password);
		if(e!=null) {
			System.out.println(e.getExpert_id());
		}else {
			System.out.println(e);
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("subjects");
		return mv;
	}
	
	/*Admin Module*/
	
	@PostMapping("/admin/login")
	public ModelAndView checkAdmin(@RequestParam("name") String name,@RequestParam("password") String password) {
		Admin a=adminrepo.findByNameAndPassword(name, password);
		if(a!=null) {
			System.out.println(a.getAdmin_id());
		}
		ModelAndView mv=new ModelAndView();
		mv.setViewName("subjects");
		return mv;
	}
	
	/*Add Expert*/
	@PostMapping("/add/expert")
	public ModelAndView addExpert(@RequestParam("name") String name,@RequestParam("password") String password) {
		Expert e=new Expert();
		e.setExpert_name(name);
		e.setExpert_password(password);
		expertrepo.save(e);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("subjects");
		return mv;
	}
	
	/*Delete Expert*/
	@GetMapping("/delete/expert")
	public void deleteExpert(@RequestParam("id")int id) {
		expertrepo.deleteById(id);
	}
	
	/*Add Student*/
	@PostMapping("/add/student")
	public ModelAndView addStudent(@RequestParam("name") String name,@RequestParam("password") String password) {
		Student s=new Student();
		s.setStd_name(name);
		s.setStd_password(password);
		stdrepo.save(s);
		ModelAndView mv=new ModelAndView();
		mv.setViewName("subjects");
		return mv;
	}
	
	/*Delete Student*/
	@GetMapping("/delete/student")
	public ModelAndView deleteStudent(@RequestParam("id")int id) {
		stdrepo.deleteById(id);
		return new ModelAndView("redirect:/subjects");
	}
	
	/*View Results*/
	@GetMapping("/view/results")
	public ModelAndView viewResults() {
		ModelAndView mv=new ModelAndView();
		List<Results> results=resrepo.findAll();
		System.out.println(results);
		mv.setViewName("subjects");
		return mv;
	}
	
	/*Controller Module*/
	@PostMapping("/controller/login")
	public ModelAndView checkController(@RequestParam("name") String name,@RequestParam("password") String password) {
		ModelAndView mv=new ModelAndView();
		if(name=="appcontroller" && password=="controller@123") {
			System.out.println("controller working..");
			return new ModelAndView("redirect:/subjects");
		}
		return new ModelAndView("redirect:/subjects");
	}
	
	/*Add Admin*/
	@PostMapping("/add/admin")
	public ModelAndView addAdmin(@RequestParam("name") String name,@RequestParam("password") String password) {
		ModelAndView mv=new ModelAndView();
		Admin a=new Admin();
		a.setAdmin_name(name);
		a.setAdmin_password(password);
		adminrepo.save(a);
		mv.setViewName("subjects");
		return mv;
	}
	
	
	
}
