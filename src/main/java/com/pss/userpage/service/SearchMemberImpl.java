package com.pss.userpage.service;

import org.apache.ibatis.session.SqlSession;

import com.pss.common.mybatis_template.Template;
import com.pss.member.model.vo.Member;
import com.pss.userpage.model.dao.SearchUserDao;

public class SearchMemberImpl implements SearchUserService {

	@Override
	public Member searchUser(String nickname) {
		SqlSession sqlSession = Template.getSqlSession();
		Member searchUser = SearchUserDao.searchUser(sqlSession, nickname);
		sqlSession.close();
		return searchUser;
	}
	
	

}
