package com.pro.util;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Calendar;

import javax.servlet.http.HttpServletResponse;
import org.springframework.web.multipart.MultipartFile;

public class FileManager {
	
	public static String doFileUpload(MultipartFile upload, String path) throws Exception{
		
		String newFileName = "";
		
		if(upload==null) {
			return null;
		}
		
		String originalFileName = upload.getOriginalFilename();
		
		// abc.txt
		// 0123456
		
		String fileExt = originalFileName.substring(originalFileName.lastIndexOf("."));
		
		if(fileExt==null || fileExt.equals("")) {
			return null;
		}
		
		newFileName = String.format("%1$tY%1$tm%1$td%1$tH%1$tM%1$tS", Calendar.getInstance());
		
		newFileName += System.nanoTime();
		newFileName += fileExt;
		
		File f = new File(path);
		if(!f.exists()) {
			f.mkdirs();
		}
		
		String fullFileName = path + File.separator + newFileName;
		
		byte[] data = upload.getBytes();
		
		FileOutputStream fos = new FileOutputStream(fullFileName);
		fos.write(data);
		fos.close();
		
		System.out.println(newFileName);
		return newFileName;
		
	}
	
	public static boolean doFileDownload(HttpServletResponse response,
			String saveFileName, String originalFileName, String path) {
		
		try {
			
			String filePath = path + File.separator + saveFileName;
			
			if(originalFileName == null || originalFileName.equals("")) {
				originalFileName = saveFileName;
			}
			
			originalFileName = new String(originalFileName.getBytes("euc-kr"),"ISO-8859-1");
			
			File f = new File(filePath);
			
			if(!f.exists()) {
				return false;
			}
			
			response.setContentType("application/octet-stream");
			response.setHeader("Content-disposition", "attachment;fileName=" + originalFileName);
			
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(f));
			
			OutputStream out = response.getOutputStream();
			
			int data;
			byte bytes[] = new byte[4096];
			while((data=bis.read(bytes, 0, 4096)) != -1) {
				out.write(bytes,0,data);
			}
			out.flush();
			out.close();
			bis.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
			return false;
		}
		
		return true;
		
	}
	
	public static void doFileDelete(String fileName, String path) {
		
		try {
			
			String filePath = path + File.separator + fileName;
			File f = new File(filePath);
			
			if(f.exists()) {
				f.delete();
			}
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
	}
}
