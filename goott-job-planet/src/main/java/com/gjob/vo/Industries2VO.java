package com.gjob.vo;

import java.util.List;

import lombok.Data;

@Data
public class Industries2VO {
	
	private int i2no;
	private int i1no;
	private String industry2;
	
	private List<CompanyVO> companies;
	private List<Resume_PoolVO> resume_pools; 

}
