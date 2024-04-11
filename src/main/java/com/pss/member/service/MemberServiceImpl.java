package com.pss.member.service;

import org.apache.ibatis.session.SqlSession;

import com.pss.common.mybatis_template.Template;
import com.pss.member.model.dao.MemberDao;
import com.pss.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{

	private MemberDao mDao = new MemberDao();
	
	@Override
	public int insertMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = mDao.insertMember(sqlSession, m);
		
		if (result > 0) {
			sqlSession.commit();
		} else {
			sqlSession.rollback();
		}
		
		sqlSession.close();
		
		return result;
	}
	
	@Override
	public Member loginMember(Member m) {
		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = mDao.loginMember(sqlSession, m);
		
		sqlSession.close();
		
		return loginUser;
	}
}
