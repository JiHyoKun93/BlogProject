package com.pro.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.pro.dto.CustomDTO;

public class CustomDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) {
		this.sessionTemplate = sessionTemplate;
	}

	public void insertData(CustomDTO dto) {
		
		sessionTemplate.insert("com.pro.custom.insert", dto);

	}

	public void updateData(CustomDTO dto) {

		sessionTemplate.update("com.pro.custom.update", dto);

	}

	public void deleteData(int id) {

		sessionTemplate.delete("com.pro.custom.delete", id);

	}

	public List<CustomDTO> getLists() {

		List<CustomDTO> lists = 
					sessionTemplate.selectList("com.pro.custom.list");
	
		return lists;
	}

	public CustomDTO getReadData(int id) {

		CustomDTO dto = sessionTemplate.selectOne("com.pro.custom.listOne", id);
		
		return dto;
	}

}
