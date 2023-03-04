package servlet;

import entities.user_data;
import entities.user_ticket;
import entities.Message;
import java.sql.*;
import dao.userdao;
import dao.uticketdao;
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
 * Servlet implementation class bookticket
 */
public class bookticket extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public bookticket() {
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
		out.print("done");
		String trainno = request.getParameter("tname");
		String jdate = request.getParameter("jdate");
		String destination = request.getParameter("destination");
		String start = request.getParameter("current");
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String phoneno = request.getParameter("unumber");
		String gender = request.getParameter("ugender");
		String seat = request.getParameter("useat");
		String fair = request.getParameter("ufair");
		
		user_ticket user = new user_ticket(trainno,jdate,destination,start,name,email,phoneno,gender,seat,fair);
		uticketdao dao = new uticketdao(connectionprovider.getConnection());
		if(dao.saveUser(user))
		{
			 Message msg = new Message("Book ticket Successfull", "sucess", "alert-sucess");
             HttpSession s = request.getSession();
             s.setAttribute("msg", msg);
             response.sendRedirect("bookticket.jsp");
			out.print("done");
		}else {
			 Message msg = new Message("Ticket not book at this time try again later", "error", "alert-danger");
             HttpSession s = request.getSession();
             s.setAttribute("msg", msg);
             response.sendRedirect("bookticket.jsp");
			out.print("error");
		}
	}

}
