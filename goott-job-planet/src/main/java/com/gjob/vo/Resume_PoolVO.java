package com.gjob.vo;

import java.util.List;

import lombok.Data;

@Data
public class Resume_PoolVO {
	
	private int mno;
	private int i2no;
	private Boolean ptype;
	private String intro;
	private String academic;
	private String r_career;
	private String prize;
	
	private List<Apply_ListVO> apply_lists;
	private List<LicenseVO> licenses;

}
