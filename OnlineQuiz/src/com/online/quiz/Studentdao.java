package com.online.quiz;
import java.sql.*;

public class Studentdao {

	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinequiz", "root", "giet");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
	public static int save(Student e){
		int status=0;
		try{
			Connection con=Studentdao.getConnection();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("Select max(id) from student");
			int id=0;
			if(rs.next()){
				id=rs.getInt(1)+1;
				e.setId(id);
			}
			PreparedStatement ps=con.prepareStatement("insert into student(id,name,email,password,specification) values (?,?,?,?,?)");
			ps.setInt(1,e.getId());
			ps.setString(2,e.getName());
			ps.setString(3,e.getEmail());
			ps.setString(4,e.getPassword());
			ps.setString(5,e.getSpecification());
			
			status=ps.executeUpdate();
			
			con.close();
		}catch(Exception ex){ex.printStackTrace();}
		
		return status;
	}
}
