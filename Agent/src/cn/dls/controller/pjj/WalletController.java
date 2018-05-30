package cn.dls.controller.pjj;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;

import cn.dls.entity.Seat;
import cn.dls.entity.Transactiontype;
import cn.dls.entity.User;
import cn.dls.service.pjj.SeatService;
import cn.dls.service.pjj.TransactiontypeService;
import cn.dls.service.pjj.WalletService;

@Controller
@RequestMapping(value="/wallet")
public class WalletController {
      
	@Resource
	private WalletService walletService;
	@Resource 
	private TransactiontypeService transactiontypeService;
	@Resource
	private SeatService seatService;
	
	@RequestMapping(value="/wallet")
	public String wallet(HttpSession session){
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "wallet";
		} else {
			return "agentjsp/wallet";
		}
	}
	
	@RequestMapping(value="/selectWallet")
	@ResponseBody
	public Object selectWallet(String id,HttpSession session){
		Integer typeid=0;
		if(!StringUtils.isNullOrEmpty(id)){
			typeid=Integer.parseInt(id);
		}
		User user = (User)session.getAttribute("user");
		return JSONArray.toJSONString(walletService.findEvery(typeid,user.getUserId()));
	}
	
	
	@RequestMapping(value="/selectWallet1")
	@ResponseBody
	public Object selectWallet1(String typ,String ope,String clo,Integer name,HttpSession session){
		if(typ.equals("请选择"))typ=null;
		User user = (User)session.getAttribute("user");
		return JSONArray.toJSONString(walletService.findEvery1(typ, ope, clo, name,user.getUserId()));
	}
	
	@RequestMapping(value="/walletlist")
	@ResponseBody
	public Object walletlist(){
		List<Transactiontype> list=transactiontypeService.findall();
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping(value="/seatlist")
	@ResponseBody
	public Object seatlist(){
		List<Seat> list=seatService.findall();
		return JSONArray.toJSONString(list);
	}
}
