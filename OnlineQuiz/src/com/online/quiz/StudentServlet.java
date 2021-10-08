package com.online.quiz;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SaveServlet")
public class StudentServlet extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		//Fetch data from HTMl form
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String specification=request.getParameter("specification");
		//Put all information in Employee class
		Student e=new Student();
		e.setName(name);
		e.setEmail(email);
		e.setPassword(password);
		e.setSpecification(specification);
		int status=Studentdao.save(e);
		if(status>0){
			out.print("<p>Record saved successfully!</p>");
			
		}else{
			out.println("Sorry! unable to save record");
		}
		request.getRequestDispatcher("index.jsp").include(request, response);
		out.close();
	}


}

