package com.pro.dto;

public class WriteBoardDTO {
	private int board_num;
	private String board_type;
	private String board_title;
	private String board_content;
	private String board_createDate;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_createDate() {
		return board_createDate;
	}
	public void setBoard_createDate(String board_createDate) {
		this.board_createDate = board_createDate;
	}
	
}
