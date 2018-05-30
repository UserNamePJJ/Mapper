package cn.dls.controller.szj;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.entity.Timeout;
import cn.dls.entity.User;
import cn.dls.service.szj.TimeoutService;

@Controller
public class TimeoutController {

	@Resource
	public TimeoutService timeService;

	/**
	 * 添加定时任务
	 * 
	 * @param title
	 * @param content
	 * @param time
	 * @param session
	 * @return
	 */
	@RequestMapping("/insert.html")
	@ResponseBody
	public Object insert(String title, String content, String time,
			HttpSession session) {
		Timeout timeout = new Timeout();
		timeout.setTitle(title);
		timeout.setUserid(((User) session.getAttribute("user")).getUserId());
		timeout.setContent(content);
		timeout.setTime(time);
		int num = timeService.inserInfo(timeout);
		if (num > 0) {
			return JSONArray.toJSONString("true");
		} else {
			return JSONArray.toJSONString("false");
		}
	}

	/**
	 * 根据标题查询定时任务
	 * 
	 * @param session
	 * @param title
	 * @param model
	 * @return
	 */
	@RequestMapping("/timecontent")
	public String getcontent(HttpSession session, String title, Model model) {
		if (!StringUtils.isNullOrEmpty(title)) {
			model.addAttribute("pdh", 1);
			Timeout timeout = timeService.getinfoBytitle(title);
			session.setAttribute("timeout", timeout);
		} else {
			model.addAttribute("pdh", 0);
		}
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "settings";
		} else {
			return "agentjsp/settings";
		}

	}

	/**
	 * 删除定时任务
	 * 
	 * @param session
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/delete")
	public String deleteinfo(HttpSession session, String id, Model model) {
		if (!StringUtils.isNullOrEmpty(id)) {
			model.addAttribute("pdt", 1);
			timeService.deleteinfo(Integer.parseInt(id));
			User user = (User) session.getAttribute("user");
			session.setAttribute("timelist",
					timeService.getTimeoutlist(user.getUserId()));
		} else {
			model.addAttribute("pdt", 0);
		}
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "settings";
		} else {
			return "agentjsp/settings";
		}
	}

	@RequestMapping("tishi")
	@ResponseBody
	public Object tishi(HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Timeout> list = timeService.getTimeoutlist(user.getUserId());
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String zhi = sdf.format(date);
		String isOK = null;
		try {
			for (int i = 0; i < list.size(); i++) {
				if (sdf.parse(list.get(i).getTime()).getYear() == sdf
						.parse(zhi).getYear()
						&& sdf.parse(list.get(i).getTime()).getMonth() == sdf
								.parse(zhi).getMonth()
						&& sdf.parse(list.get(i).getTime()).getDay() == sdf
								.parse(zhi).getDay()
						&& sdf.parse(list.get(i).getTime()).getHours() == sdf
								.parse(zhi).getHours()
						&& sdf.parse(list.get(i).getTime()).getMinutes() == sdf
								.parse(zhi).getMinutes()
						&& sdf.parse(list.get(i).getTime()).getSeconds() == sdf
								.parse(zhi).getSeconds()) {
					isOK = "true";
				} else {
					isOK = "false";
				}
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return JSONArray.toJSONString(isOK);
	}

}
