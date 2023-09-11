package com.pro.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.pro.dto.WriteBoardDTO;

public interface WriteBoardMapper {
	
	public int maxNum() throws Exception;
	
	public void insertData(WriteBoardDTO dto) throws Exception;
	
	public int getDataCount(String searchValue) throws Exception;
	
	public List<WriteBoardDTO> getLists(int start, String searchValue);
	
	public WriteBoardDTO getReadData(int num) throws Exception;
	
	public void updateHitCount(int num) throws Exception;	
	
	public void updateData(WriteBoardDTO dto) throws Exception;
	
	public void deleteData(int num) throws Exception;
	
	public List<WriteBoardDTO> getPrevReadData(String searchValue, String board_CreateDate,int board_num) throws Exception;

	public List<WriteBoardDTO> getNextReadData(String searchValue, String board_CreateDate,int board_num) throws Exception;
}
