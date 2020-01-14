package com.gjob.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int mno;
	private int cno;
	private String review;
	private Date review_Date;

}
