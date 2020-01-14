package com.gjob.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int b_no;
	private int mno;
	private String b_title;
	private String b_contents;
	private Date b_Date;

}
