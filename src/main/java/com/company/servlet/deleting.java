package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.company.dao.UserDao;
import com.company.dao.UserDaoImp;

/**
 * Servlet implementation class deleting
 */
public class deleting extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDao userD = new UserDaoImp();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleting() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        boolean bl = userD.deleteUser(name, password);
       if(bl) {
           response.sendRedirect("login.jsp?delete=0");    	   
       } else {
    	   response.sendRedirect("wellcome.jsp?wrong=3");
       }

	}

}
