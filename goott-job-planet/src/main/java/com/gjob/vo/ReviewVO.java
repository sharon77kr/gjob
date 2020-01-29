package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int rno;
	private int mno;
	private int cno;
	private String review;
	private Date review_date;
	private Date update_date;
	private boolean deleted;
	
	private int gno;
	private int sno;
}
