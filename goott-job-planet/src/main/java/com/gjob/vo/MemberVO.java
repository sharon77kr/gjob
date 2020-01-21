package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private int mno;
	private String id;
	private String passwd;
	private String mname;
	private String email;
	private String mphone;
	private Date signup;
	private Boolean admin_type;
	private Boolean mclass;
	
	private G_MemberVO gmember;
	private C_MemberVO cmember;
	
	private List<NoticeVO> notices;
	private List<ReviewVO> reviews;

}
