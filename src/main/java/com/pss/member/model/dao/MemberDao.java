package com.pss.member.model.dao;



import org.apache.ibatis.session.SqlSession;

import com.pss.member.model.vo.Member;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, Member m) {
		
		int result = sqlSession.insert("memberMapper.insertMember", m);
		
		return result;
	}
	
	public Member loginMember(SqlSession sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
}
