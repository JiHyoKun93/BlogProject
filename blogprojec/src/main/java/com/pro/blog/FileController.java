package com.pro.blog;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.omg.PortableInterceptor.SUCCESSFUL;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pro.dao.WriteBoardDAO;
import com.pro.dto.WriteBoardDTO;
@RequestMapping("/file")
@Controller("com.pro.blog.FileController")
public class FileController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	
	@Autowired
	WriteBoardDAO dao;
	
	//https://itcrowd2016.tistory.com/63 참고 해서 성공 ㅠㅠ JSON을 못받아와서 
	//pom.xml에 설정 해주는거 추가해주니까 실행됨 ㅠㅠ
	@RequestMapping(value = "/upload.do")
	public @ResponseBody Map<String, Object> fileUploadFromCKEditor(@RequestParam MultipartFile upload, HttpServletRequest request)
			throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();

		// MultipartFile file = (MultipartFile)map.get("upload");

		String originalFileName = upload.getOriginalFilename();
		// 확장자
		String ext = originalFileName.substring(originalFileName.indexOf("."));

		// 서버에 저장될 때 중복된 파일 이름인 경우를 방지하기 위해 UUID에 확장자를 붙여 새로운 파일 이름을 생성
		String newFileName = UUID.randomUUID() + ext;

		// 현재 경로
		String realPath = request.getSession().getServletContext().getRealPath("/");
		// 현재 경로 + 저장경로
		String savePath = realPath + "resources/files/" + newFileName;
		// 브라우저에서 이미지 불러올 때 절대 경로로 불러오면 보안의 위험 있어 상대경로를 쓰거나 이미지 불러오는 jsp 또는 클래스 파일을 만들어
		// 가져오는 식으로 우회해야 함
		// 때문에 savePath와 별개로 상대 경로인 uploadPath 만들어줌
		String uploadPath = "blog/img/" + newFileName;
		// 저장경로에 파일 객체 생성
		File f = new File(savePath);
		// 파일 업로드

		if (upload != null && upload.getSize() > 0) {

			try {
				InputStream is = upload.getInputStream();

				// pull path
				FileOutputStream fos = new FileOutputStream(savePath);

				// 파일을 읽어서 내보내기
				FileCopyUtils.copy(is, fos);
				
				is.close();
				fos.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}

		}
		
		String url = "http://localhost:8080/blog/image/" + newFileName;
		
		map.put("uploaded", true);
		map.put("fileName", newFileName);
		map.put("url", url);
		
		System.out.println(savePath);
		
		return map;

	}

	
	@RequestMapping(value = "/test.do")
	public ModelAndView test(@RequestParam String editorData, WriteBoardDTO dto) {
		
		int maxNum = dao.getMaxNum();
//		System.out.println("test의 maxnum = " + maxNum);
//		System.out.println("저장하러 들어옴");
//		System.out.println(dto.getBoard_title());
//		System.out.println(editorData);
		
		dto.setBoard_num(maxNum + 1);
		dto.setBoard_content(editorData);

//		System.out.println(dto.getBoard_num());
//		System.out.println(dto.getBoard_title());
//		System.out.println(dto.getBoard_type());
//		System.out.println(dto.getBoard_content());
//		System.out.println(dto.getBoard_CreateData());
		
		
		dao.insertData(dto);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("boardmain.do");
		
		return mav;
	}
	
	
		
}
