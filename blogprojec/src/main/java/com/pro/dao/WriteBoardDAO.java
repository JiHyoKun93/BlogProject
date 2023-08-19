package com.pro.dao;

import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.dto.WriteBoardDTO;

@Repository
public class WriteBoardDAO {
	
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;
		
	}
	
	private String mapper = "com.pro.writeboard";
	
	public int getMaxNum() {
		System.out.println("bnbnbnbn");
		int maxNum = sessionTemplate.selectOne("com.pro.writeboard.getMaxNum");
		System.out.println("dao의 maxnum = " + maxNum);
		return maxNum;
	}
	
	public void insertData(WriteBoardDTO dto) {
//		System.out.println(dto.getBoard_num());
//		System.out.println(dto.getBoard_title());
//		System.out.println(dto.getBoard_type());
//		System.out.println(dto.getBoard_content());
//		System.out.println(dto.getBoard_CreateData());
		System.out.println(sessionTemplate);
		sessionTemplate.insert("com.pro.writeboard.insertData", dto);

	}
	
	public WriteBoardDTO getReadData(int board_num) {
		
		WriteBoardDTO dto = sessionTemplate.selectOne("com.pro.writeboard.readData", board_num);
		
		return dto;
	}
}
