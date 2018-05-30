package cn.dls.controller.szj;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.entity.Historytime;
import cn.dls.entity.User;
import cn.dls.service.szj.HistorytimeService;
import cn.dls.service.szj.TimeoutService;

@Controller
public class HistortimeController {

	@Resource
	public TimeoutService timeService;
	@Resource
	private HistorytimeService historyService;

	/**
	 * 查看历史登录时间
	 * @param session
	 * @param historytime
	 * @param request
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping("/chatime")
	public String login(HttpSession session, String historytime,
			HttpServletRequest request) throws ParseException {
		List<Historytime> list = null;
		List<Historytime> list2 = new ArrayList<Historytime>();
		if (!StringUtils.isNullOrEmpty(historytime)) {
			request.setAttribute("pd", 1);
		} else {
			request.setAttribute("pd", 0);
		}
		User user = (User) session.getAttribute("user");
		list = historyService.gettime(user.getUserId(), historytime);
		for (Historytime ht : list) {
			String num = ht.getTime().substring(11, 13);
			int num2 = Integer.parseInt(num);
			String miao = ht.getTime().substring(11, 19);
			String sh = null;
			if (num2 < 12) {
				sh = "上午";
			} else {
				sh = "下午";
			}
			Historytime hs = new Historytime();
			hs.setMiao(miao);
			hs.setSh(sh);
			hs.setTime(ht.getTime().substring(0, 10));
			list2.add(hs);
		}
		session.setAttribute("historylist", list2);
		String loginrole = (String)session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "settings";
		} else {
			return "agentjsp/settings";
		}
	}

	@RequestMapping("dsrw")
	@ResponseBody
	public Object dsrw(HttpSession session) {
		User user = (User) session.getAttribute("user");
		return JSONArray.toJSONString(timeService.getTimeoutlist(user
				.getUserId()));
	}

	@RequestMapping("/chahistory")
	public String cha(HttpSession session, String historytime, Model model)
			throws ParseException {
		List<Historytime> list = null;
		List<Historytime> list2 = new ArrayList<Historytime>();
		model.addAttribute("pd", 1);
		User user = (User) session.getAttribute("user");
		session.setAttribute("timelist",
				timeService.getTimeoutlist(user.getUserId()));
		list = historyService.gettime(user.getUserId(), historytime);
		for (Historytime ht : list) {
			String num = ht.getTime().substring(11, 13);
			int num2 = Integer.parseInt(num);
			String miao = ht.getTime().substring(11, 19);
			String sh = null;
			if (num2 < 12) {
				sh = "上午";
			} else {
				sh = "下午";
			}
			Historytime hs = new Historytime();
			hs.setMiao(miao);
			hs.setSh(sh);
			hs.setTime(ht.getTime().substring(0, 10));
			list2.add(hs);
		}
		session.setAttribute("historylist", list2);
		String loginrole = (String)session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "settings";
		} else {
			return "agentjsp/settings";
		}

	}

}
