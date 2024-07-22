package com.pro.blog;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller("com.pro.blog.ProjectController")
public class ProjectController {
	
	@RequestMapping("/project1.do")
	public String project1(Model model) {
		model.addAttribute("type", "project");
		return "jsp/project/project1";
	}
	
	@RequestMapping("/project2.do")
	public String project2(Model model) {
		model.addAttribute("type", "project");
		return "jsp/project/project2";
	}
	
	@RequestMapping("/project3.do")
	public String project3(Model model) {
		model.addAttribute("type", "project");
		return "jsp/project/project3";
	}
	
	@RequestMapping("/project4.do")
	public String project4(Model model) {
		model.addAttribute("type", "project");
		return "jsp/project/project4";
	}
	@RequestMapping("/project5.do")
	public String project5(Model model) {
		model.addAttribute("type", "project");
		return "jsp/project/project5";
	}
}
