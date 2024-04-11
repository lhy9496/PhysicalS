package com.pss.member.service;

import com.pss.member.model.vo.Member;

public interface MemberService {
	public abstract int insertMember(Member m);
	
	public abstract Member loginMember(Member m);
}
