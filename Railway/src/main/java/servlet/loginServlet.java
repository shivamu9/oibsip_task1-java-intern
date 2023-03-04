package servlet;

import entities.user_data;
import entities.Message;
import java.sql.*;
import dao.userdao;
import help.connectionprovider;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
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
		String userEmail = request.getParameter("u_email");
		String userPassword = request.getParameter("u_pass");
		
		userdao dao = new userdao(connectionprovider.getConnection());
		user_data u = dao.getUserByEmailAndPassword(userEmail, userPassword);
		if(u == null)
		{
			//out.println("Invalid Details.. try again...");
			   Message msg = new Message("Invalid Details ! try with another", "error", "alert-danger");
               HttpSession s = request.getSession();
               s.setAttribute("msg", msg);
               response.sendRedirect("login.jsp");

		}else {
            HttpSession s = request.getSession();
            s.setAttribute("currentUser", u);
            response.sendRedirect("bookticket.jsp");
		}
	}

}
