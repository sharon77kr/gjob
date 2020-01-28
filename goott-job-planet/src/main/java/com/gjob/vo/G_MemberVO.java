package com.gjob.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class G_MemberVO {
	
	private int mno;
	private String birthDate;
	
	private Resume_PoolVO resumePool;
	
	private List<ReviewVO> reviews;

}
