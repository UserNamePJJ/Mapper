package cn.dls.controller.szj;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.dls.entity.Commodity;
import cn.dls.entity.User;
import cn.dls.service.szj.XiangqingService;

@Controller
public class XiangqingController {

	@Resource
	private XiangqingService xiangqingService;

	// 商品详情
	@RequestMapping("/xiangqing")
	public String xiangqing(HttpSession session, int id, int userid) {
		Commodity commodity = xiangqingService.getAll(userid, id);
		commodity.setDoDiscount(Math.floor(commodity.getDiscount()
				* commodity.getCommodityprice()));
		if (commodity.getIntegral() == 0 || commodity == null) {
			commodity.setIntegral(0);
		}
		commodity.setDoDiscount(Math.floor(commodity.getDiscount()
				* commodity.getCommodityprice()));
		session.setAttribute("commodity", commodity);
		return "xiangqing";
	}

}
