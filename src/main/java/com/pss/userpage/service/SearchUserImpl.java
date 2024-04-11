package com.pss.userpage.service;

import org.apache.ibatis.session.SqlSession;

import com.css.exercise.model.vo.Exercise;
import com.pss.common.mybatis_template.Template;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;
import com.pss.userpage.model.dao.SearchUserDao;

public class SearchUserImpl implements SearchUserService {

	@Override
	public Member searchUser(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchUser = SearchUserDao.searchUser(sqlSession, nickname);
		sqlSession.close();
		return searchUser;
	}

	@Override
	public Diet searchUserDiet(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		Diet searchUserDiet = SearchUserDao.searchUserDiet(sqlSession, nickname);
		sqlSession.close();
		return searchUserDiet;
	}

	@Override
	public Exercise searchUserExercise(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		Exercise searchUserExercise = SearchUserDao.searchUserExercise(sqlSession, nickname);
		sqlSession.close();
		return searchUserExercise;
	}
	
	

}
