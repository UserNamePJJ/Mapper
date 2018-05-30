package cn.dls.controller;

import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.jdbc.StringUtils;

@Controller
public class TestController {

	@RequestMapping("/console")
	public String console(HttpSession session) {
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "console";
		} else {
			return "agentjsp/console";
		}
	}

	@RequestMapping("/statistical")
	public String statistical(HttpSession session) {
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "statistical";
		} else {
			return "agentjsp/statistical";
		}
	}

	@RequestMapping("/tuichu")
	public String tuichu(HttpSession session) {
		Enumeration em = session.getAttributeNames();
		while (em.hasMoreElements()) {
			session.removeAttribute(em.nextElement().toString());
		}
		return "redirect:login.html";
	}

}
