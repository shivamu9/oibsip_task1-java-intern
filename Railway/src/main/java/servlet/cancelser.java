package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.io.IOException;
import java.io.PrintWriter;
import help.connectionprovider;
import entities.Message;
import entities.user_data;
import java.sql.*;
import dao.userdao;
import help.connectionprovider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class cancelservlet
 */

public class cancelser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public cancelser() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
	    String email = request.getParameter("viewemail");
	    String id = request.getParameter("id");
	    
	    try {
	    Class.forName("com.mysql.cj.jdbc.Driver");  
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","Pragya@95");  
	    String query = "DELETE FROM bookticket WHERE email=? AND id=?";

	    PreparedStatement ps = con.prepareStatement(query);  
	    ps.setString(1,email); 
	    int i = Integer.parseInt(id);
	    ps.setInt(2,i);
	      
	    ps.executeUpdate();
	    out.print(email);
	    out.print(id);
	    Message msg = new Message("cancel ticket Successfull", "sucess", "alert-sucess");
        HttpSession s = request.getSession();
        s.setAttribute("msg", msg);
        response.sendRedirect("cancelticket.jsp");
	                  
	    /* Printing column names */   
	                  
	    }catch(Exception e){
	    	Message msg = new Message("ticket cancel Successfull, try again later", "sucess", "alert-sucess");
            HttpSession s = request.getSession();
            s.setAttribute("msg", msg);
            response.sendRedirect("cancelticket.jsp");
            
	    	e.printStackTrace();
	    	
	    }  
	                 
	}
}


