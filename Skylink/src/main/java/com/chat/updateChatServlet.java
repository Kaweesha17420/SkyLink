package com.chat;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/updateChatServlet")
public class updateChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String chatId = request.getParameter("chatId");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = chatDbUtil.updateChat(chatId, description);
		
		if(isTrue == true) {
			
			List<Chat> chatDetails = chatDbUtil.getChatDetails(chatId);
			request.setAttribute("chatDetails", chatDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactUs.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Chat> chatDetails = chatDbUtil.getChatDetails(chatId);
			request.setAttribute("chatDetails", chatDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("contactUs.jsp");
			dis.forward(request, response);
		}
		
		
		
	}

}
