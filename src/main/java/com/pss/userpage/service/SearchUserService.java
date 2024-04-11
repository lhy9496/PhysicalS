package com.pss.userpage.service;

import com.pss.member.model.vo.Member;

public interface SearchUserService {
	
	public abstract Member searchUser(String nickname);

}
