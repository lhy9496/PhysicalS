package com.pss.userpage.service;

import java.util.ArrayList;

import com.css.exercise.model.vo.Exercise;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;

public interface SearchUserService {
	
	public abstract ArrayList searchUser(String nickname);

}
