package com.pss.userpage.service;

import com.css.exercise.model.vo.Exercise;
import com.pss.diet.model.vo.Diet;
import com.pss.member.model.vo.Member;

public interface SearchUserService {
	
	public abstract Member searchUser(String nickname);
	public abstract Diet searchUserDiet(String nickname);
	public abstract Exercise searchUserExercise(String nickname);

}
