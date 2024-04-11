package com.pss.userpage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.css.exercise.model.vo.Exercise;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;

public class SearchUserDao {
	
	public static ArrayList searchUser(SqlSession sqlSession, String nickname) {
		ArrayList<Object> list = new ArrayList<>();
		list.add(sqlSession.selectOne("userpage-mapper.SearchUser", nickname));
		list.add(sqlSession.selectOne("userpage-mapper.SearchUserDiet", nickname));
		list.add(sqlSession.selectOne("userpage-mapper.SearchUserExercise", nickname));
		return list;
	}

}
