package com.pro.mybatis;

import java.util.List;

import org.springframework.context.support.GenericApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.pro.dao.CustomDAO;
import com.pro.dto.CustomDTO;

public class CustomMain {

	public static void main(String[] args) {
		
		GenericApplicationContext context = new GenericXmlApplicationContext("app-context.xml");
		
		CustomDAO dao = (CustomDAO)context.getBean("customDAO");
		
		CustomDTO dto;

		//insert
		dto = new CustomDTO();
		dto.setId(1);
		dto.setName("¼öÁö");
		dto.setAge(20);
		
		dao.insertData(dto);
		
		System.out.println("insert data");
//		
//		//select
//		List<CustomDTO> lists = dao.getLists();
//		
//		for(CustomDTO vo : lists) {
//			
//			System.out.printf("%d %s %d\n", vo.getId(),vo.getName(),vo.getAge());
//			
//		}
		
		//ReadData
		
//		dto = dao.getReadData(333);
//		
//		if(dto != null) {
//			System.out.printf("%d %s %d\n", dto.getId(),dto.getName(),dto.getAge());
//		}
		
		// update
		
//		dto = new CustomDTO();
//		
//		dto.setId(111);
//		dto.setName("ì±„ìˆ˜ë¹?");
//		dto.setAge(30);
//		
//		dao.updateData(dto);
//		
//		System.out.println("?—…?Žƒ ?™„ë£?");
		
//		//delete
//		dao.deleteData(333);
//		System.out.println("?‚­?™„");
		
	}

}
