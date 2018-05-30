package cn.dls.controller.lk;

import java.math.BigDecimal;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.entity.Commodity;
import cn.dls.service.lk.ThehomeService;

@Controller
public class ThehomeController {
	@Resource
	private ThehomeService thehomeService;

	@RequestMapping(value = "/the")
	public String toTheHome() {
		return "thehome";
	}

	/**
	 * thehome1
	 * 内容
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/thehome.html")
	public String docontent(Model model ,HttpSession session ,String comdityname) {
		Commodity commodity=new Commodity();
		if (!StringUtils.isNullOrEmpty(comdityname)) {
			commodity.setCommodityname(comdityname);
		}
		List<Commodity> comditList = thehomeService.getCommoditList(comdityname);
		for (int i = 0; i < comditList.size(); i++) {
			comditList.get(i).setDoDiscount(Math.floor(comditList.get(i).getDiscount()*comditList.get(i).getCommodityprice()));
		}
		List<Commodity> daohanList=thehomeService.getCommlist();
		session.setAttribute("daohanList", daohanList);
		session.setAttribute("comditList", comditList);
		return "thehome1";
	}
	
/*	@RequestMapping(value = "/home")
	public String doDaohan(Model model){
		List<Commodity> daohanList=thehomeService.getCommlist();
		model.addAttribute("daohanList", daohanList);
		return "thehome1";
	}*/
	

	/**
	 * 导航
	 * 
	 * @param propertyname
	 * @return
	 */
/*	@RequestMapping(value = "/home")
	public @ResponseBody
	Object doDaohan() {

		return JSON.toJSONString(thehomeService.getCommlist());
	}*/

	/**
	 * 商品
	 * 
	 * @return
	 */
	/*@RequestMapping(value = "/home1")
	public @ResponseBody
	Object doShangping() {

		return JSONArray.toJSONString(thehomeService.getCommoditList());
	}*/

}
