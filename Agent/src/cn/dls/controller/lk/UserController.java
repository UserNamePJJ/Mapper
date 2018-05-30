package cn.dls.controller.lk;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.dao.szj.ConsoleMapper;
import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;
import cn.dls.entity.User;
import cn.dls.service.lk.UserService;
import cn.dls.service.szj.ConsoleService;
import cn.dls.service.szj.HistorytimeService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	@Resource
	private ConsoleService consoleService;
	@Resource
	private HistorytimeService historyService;

	@RequestMapping("/login.html")
	public String login() {
		return "login";
	}

	// 登录
	@RequestMapping("/doLogin.html")
	public String doLogin(String userName, String password,
			HttpSession session, HttpServletRequest request) {
		User user = userService.login(userName, password);
		if (user != null) {
			historyService.insert(user.getUserId());
			int num = consoleService.daliCount();
			int billCount = consoleService.billCount();
			int moneyCount = consoleService.moneyCount();
			int modCount = consoleService.modCount();
			int souCount = consoleService.souCount();
			int zhiCount = consoleService.zhiCount();

			session.setAttribute("modCount", modCount);
			session.setAttribute("num", num);
			session.setAttribute("billCount", billCount);
			session.setAttribute("moneyCount", moneyCount);
			session.setAttribute("souCount", souCount);
			session.setAttribute("zhiCount", zhiCount);
			session.setAttribute("user", user);
			if (user.getRoleId() == 1) {
				session.setAttribute("loginrole", "1");
				return "redirect:thehome.html";
			} else if (user.getRoleId() == 5) {
				session.setAttribute("loginrole", "3");
				return "redirect:thehome.html";
			} else {
				session.setAttribute("loginrole", "2");
				return "redirect:thehome.html";
			}
		} else {
			request.setAttribute("error", "帐号密码错误");
			return "login";
		}
	}

	@RequestMapping("tologin")
	public String tologin(HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (user.getRoleId() == 1) {
			session.setAttribute("loginrole", "1");
			return "console";
		} else if (user.getRoleId() == 5) {
			session.setAttribute("loginrole", "3");
			return "redirect:thehome.html";
		} else {
			session.setAttribute("loginrole", "2");
			return "agentjsp/console";
		}
	}

	// 根据id删除
	@RequestMapping(value = "delAgent")
	@ResponseBody
	public Object delUser(String id) {
		System.out.println(id + "-------------------------------");
		int result = userService.delAgentById(Integer.valueOf(id));
		System.out.println(result + "-------------------------------");
		List<User> agentList = userService.getAgentList(null, null);
		return JSONArray.toJSONString(agentList);

	}

	// 跳转agentlist.jsp页面
	@RequestMapping("/ahent.html")
	public String doads() {
		return "/agentlist";

	}

	// 查看代理商信息
	@RequestMapping(value = "/doagent")
	@ResponseBody
	public Object agentlist(String userName, String monetary) {
		User user = new User();
		if (!StringUtils.isNullOrEmpty(userName)) {
			user.setUserName(userName);
		}
		if (!StringUtils.isNullOrEmpty(monetary)) {
			user.setUserName(monetary);
		}
		List<User> agentList = userService.getAgentList(userName, monetary);
		return JSONArray.toJSONString(agentList);

	}

	// 跳转customerlist.jsp页面
	@RequestMapping("/customer.html")
	public String docustomer(HttpSession session) {
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "customerlist";
		} else {
			return "agentjsp/customerlist";
		}
	}

	// 查看客户信息
	@RequestMapping(value = "/docustomer")
	public @ResponseBody
	Object customerlist(String userName, String monetary) {
		User user = new User();
		if (!StringUtils.isNullOrEmpty(userName)) {
			user.setUserName(userName);
		}
		if (!StringUtils.isNullOrEmpty(monetary)) {
			user.setMonetary(Integer.valueOf(monetary));
		}
		List<User> userlist = userService.getUserList(userName, monetary);
		return JSONArray.toJSONString(userlist);
	}

	@RequestMapping(value = "/yuan.html", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object yuan() {
		List<Commodity> modList = null;
		modList = consoleService.maxList();
		return JSONArray.toJSONString(modList);
	}

	@RequestMapping(value = "/yuan2.html", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object yuan2() {
		List<User> souList = null;
		souList = consoleService.souList();
		return JSONArray.toJSONString(souList);
	}

	@RequestMapping(value = "/yuan3.html", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object yuan3() {
		List<User> zhiList = null;
		zhiList = consoleService.zhiList();
		return JSONArray.toJSONString(zhiList);
	}

	@RequestMapping(value = "/qu1.html", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object qu1() {
		List<Bill> list = null;
		list = consoleService.BilCount();
		return JSONArray.toJSONString(list);
	}

	@RequestMapping(value = "/qu2.html", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object qu2() {
		List<Bill> list = null;
		list = consoleService.qu2();
		return JSONArray.toJSONString(list);
	}
}
