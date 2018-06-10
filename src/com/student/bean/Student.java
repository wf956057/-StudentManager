package com.student.bean;

/**
 * student のBean　class
 * @author Administrator
 *
 */
public class Student {

	private Integer id;//学生id　１
	private String name;//学生姓名 2
	private int age;//学生年齢 6
	private String birthday;//学生生年月日 5
	private String address;//住所
	private String telephone;//学生电话 3
	private String poslnumber;//学生邮编 4
	private int classid;//学生のクラスid
	private double score;//学生成績 7


	public int getClassid() {
		return classid;
	}

	public void setClassid(int classid) {
		this.classid = classid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

public String getPoslnumber() {
	return poslnumber;
}

public void setPoslnumber(String poslnumber) {
	this.poslnumber = poslnumber;
}
}
