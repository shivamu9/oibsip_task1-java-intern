package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import help.connectionprovider;
import entities.user_data;
import java.sql.*;
import dao.userdao;
import help.connectionprovider;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class viewticket
 */
public class viewticket extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public viewticket() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
	    String email = request.getParameter("viewemail");
	    
	    try {
	    Class.forName("com.mysql.cj.jdbc.Driver");  
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","Pragya@95");  
	    String query = "select * from bookticket where email=?";

	    PreparedStatement ps= con.prepareStatement(query);  
	    ps.setString(1,email);  
	                  
	    out.print("<center><table width=50% border=0 padding=20px>");  
	    out.print("<caption>Result:</caption>");  
	      
	    ResultSet rs=ps.executeQuery();  
	                  
	    /* Printing column names */  
	    ResultSetMetaData rsmd=rs.getMetaData();  
	    int total=rsmd.getColumnCount();  
	    out.print("<tr>");  
	    for(int i=1;i<=total;i++)  
	    {  
	    out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
	    }  
	      
	    out.print("</tr>");  
	                  
	    /* Printing result */  
	      
	    while(rs.next())  
	    {  
	    out.print("<tr><td>"+rs.getInt(1)+"</td><td>" +rs.getString(2)+" </td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"
	    	 + rs.getString(5) + "</td><td>"
	    	 + rs.getString(6) + "</td><td>"
	         + rs.getString(7) + "</td><td>"
	    	 + rs.getString(8) + "</td><td>"
	    	 + rs.getString(9) + "</td><td>"
	    	 + rs.getString(010) + "</td></tr>");  
	    
	    }  
	      
	    out.print("</table></center>");  
	                  
	    }catch(Exception e){e.printStackTrace();}  
	                 
	}

}
