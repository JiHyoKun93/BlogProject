package com.pro.blog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller("com.pro.blog.ProfileController.java")
public class ProfileController {
	

	@RequestMapping(value = "/profile.do", method = RequestMethod.GET)
	public String profile(Model model) {
		model.addAttribute("type", "profile");
		return "jsp/profile/profile";
	}
	
}
