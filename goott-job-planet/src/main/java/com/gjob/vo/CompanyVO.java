package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CompanyVO {
	
	private int cno;
	private String cwebsite;
	private String location;
	private Date eDate;
	private int employees;
	private String ctype;
	private int sales;
	private String cimage;
	private int i2no;
	private int mno;
	
	private List<ReviewVO> reviews;
	private List<RecruitVO> recruits;

}
