package com.chat;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/deleteChatServlet")
public class deleteChatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String chatId = request.getParameter("chatId");
        boolean isTrue;

        isTrue = chatDbUtil.deleteChat(chatId);

        if (isTrue) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("contactUs.jsp");
            dispatcher.forward(request, response);
        } else {

            List<Chat> chatDetails = chatDbUtil.getChatDetails(chatId);
            request.setAttribute("chatDetails", chatDetails);

            RequestDispatcher dispatcher = request.getRequestDispatcher("contactUs.jsp");
            dispatcher.forward(request, response);
        }
		
		
	}

}
