package cn.dls.controller.szj;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;

import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;
import cn.dls.entity.User;
import cn.dls.service.szj.StatisticalService;

@Controller
public class StatisticalController {

	@Resource
	private StatisticalService statisticalService;
	@RequestMapping("/tonji.html")
	@ResponseBody
	public Object yuan1(){
		Commodity commodity=statisticalService.kucunB();
		List<Integer> list=new ArrayList<Integer>();
		list.add(commodity.getTotalinventory());
		list.add(commodity.getWarehouseinventory());
		list.add(commodity.getPutawayinventory());
		return JSONArray.toJSONString(list);
	}
	@RequestMapping("/tonji2.html")
	@ResponseBody
	public Object yuan2(){
		int dailiCount=statisticalService.dailiCount();
		int kehuCount=statisticalService.kehuCount();
		int userCount=statisticalService.userCount();
		List<Integer> list=new ArrayList<Integer>();
		list.add(dailiCount);
		list.add(kehuCount);
		list.add(userCount);
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping(value="/zhu1.html",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object zhu1() {
		List<Bill> list=null;
		list=statisticalService.BilCount();
		return JSONArray.toJSONString(list);
	}
	@RequestMapping(value="/zhu2.html",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object zhu2() {
		List<Bill> list=null;
		list=statisticalService.tuikuanCount();
		return JSONArray.toJSONString(list);
	}
	@RequestMapping(value="/zhu4.html",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object zhu4() {
		List<Bill> list=null;
		list=statisticalService.tixianMoney();
		return JSONArray.toJSONString(list);
	}
	@RequestMapping(value="/zhu3.html",produces = "text/html;charset=UTF-8")
	@ResponseBody
	public Object zhu3() {
		List<Bill> list=null;
		list=statisticalService.czMoney();
		return JSONArray.toJSONString(list);
	}
	
}
