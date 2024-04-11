package com.pss.userpage.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.pss.member.model.vo.Member;

public class SearchUserDao {

	public static Member searchUser(SqlSession sqlSession, String nickname) {
		return sqlSession.selectOne("test.test", nickname);
	}

}
