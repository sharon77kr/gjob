package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class RecruitVO {
	
	private int recNo;
	private int cno;
	private String recTitle;
	private String position;
	private String recType;
	private String education;
	private String age;
	private String gender;
	private String recCareer;
	private String salary;
	private String recDetail;
	private String responsibility;
	private String requirements;
	private String recNumber;
	private String period;
	private String recEtc;
	private String region;
	private String recProcess;
	private Date recDate;
	
	private String recRTitle;
	private String recContents;
	
	private List<Apply_ListVO> applyLists;

}
