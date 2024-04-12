package com.pss.exercise.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;

import com.pss.exercise.model.vo.Exercise;

public class ExerciseDao {

	public ArrayList<Exercise> selectExerciseList(SqlSession sqlSession) {
		return (ArrayList)sqlSession.selectList("exerciseMapper.selectExerciseList");

	}

}
