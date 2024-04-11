package com.pss.userpage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.css.exercise.model.vo.Exercise;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;
import com.pss.userpage.service.SearchUserImpl;

/**
 * Servlet implementation class SearchUserController
 */
@WebServlet("/search.us")
public class SearchUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SearchUserController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String nickname = request.getParameter("nickname");
		
		Member searchUser = new SearchUserImpl().searchUser(nickname);
		Diet diet = new SearchUserImpl().searchUserDiet(nickname);
		Exercise exercise = new SearchUserImpl().searchUserExercise(nickname);
		
		if (searchUser == null) {
			request.setAttribute("errorMsg", "존재하지 않는 유저입니다.");
			response.sendRedirect(request.getContextPath());
		} else {
			request.getSession().setAttribute("searchUser", searchUser);
			request.getSession().setAttribute("diet", diet);
			request.getSession().setAttribute("exercise", exercise);
			request.getRequestDispatcher("WEB-INF/views/userpage/userpage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
