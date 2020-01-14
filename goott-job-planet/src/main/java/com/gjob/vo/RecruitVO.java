package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class RecruitVO {
	
	private int rec_no;
	private int cno;
	private String rec_title;
	private String position;
	private String rec_type;
	private String education;
	private int age;
	private String gender;
	private String rec_career;
	private String salary;
	private String rec_detail;
	private String responsibility;
	private String requirements;
	private String rec_number;
	private String period;
	private String rec_etc;
	private String region;
	private String rec_process;
	private Date rec_Date;
	
	private List<Apply_ListVO> apply_lists;

}
