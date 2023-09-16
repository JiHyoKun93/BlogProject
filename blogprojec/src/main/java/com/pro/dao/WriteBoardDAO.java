package com.pro.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pro.dto.WriteBoardDTO;
import com.pro.mapper.WriteBoardMapper;

@Repository
public class WriteBoardDAO implements WriteBoardMapper {
	
	private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception {
		this.sessionTemplate = sessionTemplate;
		
	}
	
	private String mapper = "com.pro.writeboard";

	@Override
	public int maxNum() throws Exception {
		int maxNum = sessionTemplate.selectOne("com.pro.writeboard.maxNum");
		System.out.println("dao의 maxnum = " + maxNum);
		return maxNum;
	}

	@Override
	public void insertData(WriteBoardDTO dto) throws Exception {
		sessionTemplate.insert("com.pro.writeboard.insertData", dto);
	}

	@Override
	public int getDataCount(String searchValue) throws Exception {
		int totalDataCount = 0;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("searchValue", searchValue);
		
		totalDataCount = sessionTemplate.selectOne("com.pro.writeboard.getDataCount", params);
		return totalDataCount;
	}

	@Override
	public List<WriteBoardDTO> getLists(int start, String searchValue) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", start);
		params.put("searchValue", searchValue);
		
		List<WriteBoardDTO> lists = sessionTemplate.selectList("com.pro.writeboard.getList",params);
		
		return lists;
	}

	@Override
	public WriteBoardDTO getReadData(int num) throws Exception {
		WriteBoardDTO dto = sessionTemplate.selectOne("com.pro.writeboard.getReadData", num);
		
		return dto;
	}

	@Override
	public void updateHitCount(int num) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateData(WriteBoardDTO dto) throws Exception {
		sessionTemplate.update("com.pro.writeboard.updateData", dto);
	}

	@Override
	public void deleteData(int num) throws Exception {
		sessionTemplate.delete("com.pro.writeboard.deleteData", num);
	}

	@Override
	public List<WriteBoardDTO> getPrevReadData(String searchValue, String board_CreateDate,int board_num) throws Exception {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("searchValue", searchValue);
		params.put("board_createDate", board_CreateDate);
		params.put("board_num", board_num);
		
		List<WriteBoardDTO> lists = sessionTemplate.selectList("com.pro.writeboard.prevReadData",params);
		
		return lists;
	}

	@Override
	public List<WriteBoardDTO> getNextReadData(String searchValue, String board_CreateDate, int board_num) throws Exception {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("searchValue", searchValue);
		params.put("board_createDate", board_CreateDate);
		params.put("board_num", board_num);

		List<WriteBoardDTO> lists = sessionTemplate.selectList("com.pro.writeboard.nextReadData",params);
		
		return lists;
	}
	
	
	
	
	
	
	
	
}
