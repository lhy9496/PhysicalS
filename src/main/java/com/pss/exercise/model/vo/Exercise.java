package com.pss.exercise.model.vo;

public class Exercise {
	
	private int exerciseNo;
	private String bodyPart;
	private String exerciseName;
	
	public Exercise() {
		super();
	}

	public Exercise(int exerciseNo, String bodyPart, String exerciseName) {
		super();
		this.exerciseNo = exerciseNo;
		this.bodyPart = bodyPart;
		this.exerciseName = exerciseName;
	}

	public int getExerciseNo() {
		return exerciseNo;
	}

	public void setExerciseNo(int exerciseNo) {
		this.exerciseNo = exerciseNo;
	}

	public String getBodyPart() {
		return bodyPart;
	}

	public void setBodyPart(String bodyPart) {
		this.bodyPart = bodyPart;
	}

	public String getExerciseName() {
		return exerciseName;
	}

	public void setExerciseName(String exerciseName) {
		this.exerciseName = exerciseName;
	}

	@Override
	public String toString() {
		return "Exercise [exerciseNo=" + exerciseNo + ", bodyPart=" + bodyPart + ", exerciseName=" + exerciseName + "]";
	}
	
	
	
	
}
