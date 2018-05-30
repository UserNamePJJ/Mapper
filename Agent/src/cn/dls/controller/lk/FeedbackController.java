package cn.dls.controller.lk;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.enterprise.inject.New;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.entity.Comment;
import cn.dls.entity.User;
import cn.dls.service.lk.FeedbackService;

@Controller
public class FeedbackController {
	@Resource
	private FeedbackService feedbackService;

	// 意见反馈
	@RequestMapping("/feedblist.html")
	public String dofeedb(HttpSession session) {
		String loginrole = (String) session.getAttribute("loginrole");
		List<Comment> getComments = feedbackService.getComments(((User) session
				.getAttribute("user")).getUserId());
		for (int i = 0; i < getComments.size(); i++) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			try {
				Date date = sdf.parse(getComments.get(i).getTime());
				getComments.get(i)
						.setYear(
								"20"
										+ (date.getYear() + "").toString()
												.substring(1, 3));
				getComments.get(i).setMonth(date.getMonth() + 1);
				getComments.get(i).setDate(date.getDate());
				SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy");
				Date date2 = new Date();
				if (sdf2.format(date2).equals(getComments.get(i).getYear())) {
					getComments.get(i).setYear("1");
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		session.setAttribute("getComments", getComments);
		if (loginrole == "1") {
			return "feedback";
		} else {
			return "agentjsp/feedback";
		}
	}

	@RequestMapping("feedremove")
	@ResponseBody
	public Object feedremove(String rid) {
		int id = Integer.parseInt(rid);
		int zhi = feedbackService.remove(id);
		if (zhi == 1) {
			return JSONArray.toJSONString("true");
		} else {
			return JSONArray.toJSONString("false");
		}
	}

	/**
	 * 写信 回信
	 * 
	 * @param name
	 * @param session
	 * @return
	 */
	@RequestMapping("sendemail")
	public String email(
			@RequestParam(value = "name", required = false) String name,
			String id, HttpSession session, Model model) {
		if (!StringUtils.isNullOrEmpty(name)) {
			model.addAttribute("title", name);
		}
		if (!StringUtils.isNullOrEmpty(id)) {
			int userid = Integer.parseInt(id);
			model.addAttribute("sendid", userid);
		}
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "sendemail";
		} else {
			return "agentjsp/sendemail";
		}
	}

	@RequestMapping("fasongemail")
	public String sendemail(String sendid, String context, String title,
			HttpSession session) {
		int addresser;
		if (!StringUtils.isNullOrEmpty(sendid)) {
			// 发件人 回复要回复到他的id上
			addresser = Integer.parseInt(sendid);
			int zhi = feedbackService.addComment(addresser,
					((User) session.getAttribute("user")).getUserId(), title,
					context);
			if (zhi != 1) {
				session.setAttribute("error", "发送错误!");
				return "sendemail";
			}
		}
		return "redirect:feedblist.html";
	}

	@RequestMapping("updateStatice")
	@ResponseBody
	public Object updateStatice(String id) {
		if (!StringUtils.isNullOrEmpty(id)) {
			feedbackService.updatestatic(Integer.parseInt(id));
		}
		return null;
	}

}
