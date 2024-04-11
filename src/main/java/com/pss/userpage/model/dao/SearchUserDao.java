package com.pss.userpage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.css.exercise.model.vo.Exercise;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;

public class SearchUserDao {

	public static Member searchUser(SqlSession sqlSession, String nickname) {
		return sqlSession.selectOne("userpage-mapper.SearchUser", nickname);
	}

	public static Diet searchUserDiet(SqlSession sqlSession, String nickname) {
		return sqlSession.selectOne("userpage-mapper.SearchUserDiet", nickname);
	}

	public static Exercise searchUserExercise(SqlSession sqlSession, String nickname) {
		return sqlSession.selectOne("userpage-mapper.SearchUserExercise", nickname);
	}

}
