package com.gjob.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int bno;
	private int mno;
	private String btitle;
	private String bcontents;
	private Date bdate;

}
