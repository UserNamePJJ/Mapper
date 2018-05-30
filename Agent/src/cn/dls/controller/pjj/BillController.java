package cn.dls.controller.pjj;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;

import cn.dls.service.pjj.BillService;
import cn.dls.entity.Bill;
import cn.dls.entity.User;

@Controller
public class BillController {
	@Resource
	private BillService billService;

	@RequestMapping("/billlist")
	public String billList(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");

		List<Bill> list = billService.findall(user.getUserId(),
				user.getRoleId());

		model.addAttribute("billlist", list);
		return "billlist";
	}

	@RequestMapping(value = "/select")
	@ResponseBody
	public Object select(
			HttpSession session,
			@RequestParam(value = "billid", required = false) Integer billid,
			@RequestParam(value = "commodityName", required = false) String commodityName,
			@RequestParam(value = "userName", required = false) String userName,
			@RequestParam(value = "address", required = false) String address) {
		User user = (User) session.getAttribute("user");
		if (billid == null)
			billid = 0;
		List<Bill> list = billService.getlist(user.getUserId(),
				user.getRoleId(), billid, commodityName, userName, address);
		return JSONArray.toJSONString(list);
	}

	/**
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/ddfk")
	@ResponseBody
	public String ddfk(Model model, HttpSession session, int state) {
		String statename = null;
		if (state == 1) {
			statename = "待付款";
		} else if (state == 2) {
			statename = "待发货";
		} else if (state == 3) {
			statename = "已发货";
		} else if (state == 4) {
			statename = "交易成功";
		} else if (state == 5) {
			statename = "交易关闭";
		}

		User user = (User) session.getAttribute("user");

		List<Bill> list = billService.getlist1(user.getUserId(),
				user.getRoleId(), statename);

		return JSONArray.toJSONString(list);
	}
	
	
	//跳转到我的宝贝页面
	@RequestMapping("/console1")
	public String console1() {
		return "fukuan";
	}
	
	
	@RequestMapping("/load")
	@ResponseBody
	public Object load(HttpSession session) {
		User user = (User) session.getAttribute("user");

	/*	List<Bill> list = billService.findallbuy(user.getUserId(),
				user.getRoleId());*/
		List<Bill> list = billService.findallbuy(user.getUserId(),
				user.getRoleId());
		
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping("/load1")
	@ResponseBody
	public Object load1(HttpSession session,int index) {
		User user = (User) session.getAttribute("user");
		String statename = null;
		if (index == 1) {
			statename = "待付款";
		} else if (index == 2) {
			statename = "待发货";
		} else if (index == 3) {
			statename = "已发货";
		} else if (index == 4) {
			statename = "交易成功";
		} else if (index == 5) {
			statename = "交易关闭";
		} else if (index == 0) {
			/*	List<Bill> list = billService.findallbuy(user.getUserId(),
			user.getRoleId());*/
			List<Bill> list = billService.findallbuy(user.getUserId(),
					user.getRoleId());
			
			return JSONArray.toJSONString(list);
		}
	/*	List<Bill> list = billService.findallbuy(user.getUserId(),
				user.getRoleId());*/
		List<Bill> list = billService.getlist2(user.getUserId(),
				user.getRoleId(),statename);
		
		return JSONArray.toJSONString(list);
	}
	
	//删除订单
	@RequestMapping("/deletebill")
	@ResponseBody
	public Object delete1(HttpSession session,int billid) {
		
		int num=billService.delete(billid);
		if(num>0){
		User user = (User) session.getAttribute("user");

		/*	List<Bill> list = billService.findallbuy(user.getUserId(),
					user.getRoleId());*/
			List<Bill> list = billService.findallbuy(user.getUserId(),
					user.getRoleId());
			return JSONArray.toJSONString(list);
		}
			
			return null;
		
	}
	@RequestMapping("/deletebillo")
	@ResponseBody
	public Object delete1o(HttpSession session,int billid,int num) {
		
		int num1=billService.delete(billid);
		if(num1>0){
		User user = (User) session.getAttribute("user");

		String statename = null;
		if (num == 1) {
			statename = "待付款";
		} else if (num == 2) {
			statename = "待发货";
		} else if (num == 3) {
			statename = "已发货";
		} else if (num == 4) {
			statename = "交易成功";
		} else if (num == 5) {
			statename = "交易关闭";
		} else if (num == 0) {
			/*	List<Bill> list = billService.findallbuy(user.getUserId(),
			user.getRoleId());*/
			List<Bill> list = billService.findallbuy(user.getUserId(),
					user.getRoleId());
			
			return JSONArray.toJSONString(list);
		}
	/*	List<Bill> list = billService.findallbuy(user.getUserId(),
				user.getRoleId());*/
		List<Bill> list = billService.getlist2(user.getUserId(),
				user.getRoleId(),statename);
		
		return JSONArray.toJSONString(list);
			
		}
		return null;
	}
	
	     //订单详细信息
		@RequestMapping("/billcont")
		@ResponseBody
		public Object billcont(int billid) {
				List<Bill> list = billService.selectbill(billid);
				return JSONArray.toJSONString(list);
		}
}
