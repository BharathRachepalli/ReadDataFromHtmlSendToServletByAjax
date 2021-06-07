package Servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.FeedDataToDatabase;
import Dao.FetchDataFromDatabsae;
import Model.Login;

/**
 * Servlet implementation class GetAjaxData
 */
@WebServlet("/GetAjaxData")
public class GetAjaxData extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			List<Login> regList = new FetchDataFromDatabsae().getData();
			
			request.setAttribute("reg_list", regList);
						
			RequestDispatcher dispatcher = request.getRequestDispatcher("/PrintList.jsp");
			
			dispatcher.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

//		BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream()));
//
//		String json = "";
//		if (br != null) {
//			json = br.readLine();
//		}
//		System.out.println(json);
		
//		System.out.println("in serv "+request.getParameter("firstName"));
//		System.out.println(request.getParameter("lastName"));
		
		
		
		addDataToDatabase(request, response);
		try {
			displayRegistration(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void displayRegistration(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, Exception {

		List<Login> regList = new FetchDataFromDatabsae().getData();

		HttpSession session = request.getSession();
		session.setAttribute("reg_list", regList);
		response.sendRedirect("PrintList.jsp");

	}

	private void addDataToDatabase(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String result="";
		if((new BufferedReader(new InputStreamReader(request.getInputStream())))!=null) {
			result = new BufferedReader(new InputStreamReader(request.getInputStream())).readLine();
		}
		String[] listOfData = result.split(",");
		
		Login login = new Login();
		login.setFname(listOfData[0]);
		login.setLname(listOfData[1]);
		login.setEmail(listOfData[2]);
		login.setPassword(listOfData[3]);
		login.setAddress(listOfData[4]);
		login.setPhone(listOfData[5]);
		login.setGender(listOfData[6]);

		new FeedDataToDatabase().dataToDatabase(login);
	}

}
