package cn.dls.controller.ws;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.dls.entity.Commodity;
import cn.dls.entity.Inventorytransaction;
import cn.dls.entity.User;
import cn.dls.service.ws.CommodityService;
import cn.dls.service.ws.InventoryService;

@Controller
public class InventoryController {
	@Resource
	private InventoryService inventoryService;
	@Resource
	private CommodityService commodityService;

	// 库存查看
	@RequestMapping("/inventoryview")
	public String inventoryview(
			@RequestParam(value = "cdID", required = false) Integer cdID,
			Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		if (cdID == null) {
			cdID = 0;
		}
		List<Inventorytransaction> list = inventoryService.queryListByCdID(
				user.getUserId(), cdID);
		model.addAttribute("kucuns", list);
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "inventoryview";
		} else {
			return "agentjsp/inventoryview";
		}
	}

	@RequestMapping("/addInventory")
	public String insert(Inventorytransaction inventorytransaction,
			HttpSession session) {
		User user = (User) session.getAttribute("user");
		Commodity commodity = commodityService.getCommodity(user.getUserId(),
				Integer.parseInt(inventorytransaction.getCommodityid()));
		inventorytransaction.setUserid(user.getUserId());
		inventoryService.insert(inventorytransaction);
		if (inventorytransaction.getTransactiontype().equals("出库")) {
			commodityService.update(
					commodity.getWarehouseinventory()
							- inventorytransaction.getTransactionnum(),
					commodity.getPutawayinventory()
							+ inventorytransaction.getTransactionnum(),
					Integer.parseInt(inventorytransaction.getCommodityid()),
					user.getUserId());
		} else {
			commodityService.update(
					commodity.getWarehouseinventory()
							+ inventorytransaction.getTransactionnum(),
					commodity.getPutawayinventory()
							- inventorytransaction.getTransactionnum(),
					Integer.parseInt(inventorytransaction.getCommodityid()),
					user.getUserId());
		}

		return "redirect:inventoryview";
	}

	// 库存 出入
	@RequestMapping("/inventoryAccess")
	public String inventoryAccess(Model model,
			@RequestParam(value = "cdID", required = false) Integer cdID,
			String transactiontype, HttpSession session) {
		if (cdID == null) {
			model.addAttribute("show", null);
		} else {
			model.addAttribute("show", "show");
		}
		User user = (User) session.getAttribute("user");
		List<Commodity> list = commodityService.findAll(user.getUserId());
		model.addAttribute("commodityList", list);
		model.addAttribute("cdId", cdID);
		model.addAttribute("transactiontype", transactiontype);
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "inventoryAccess";
		} else {
			return "agentjsp/inventoryAccess";
		}
	}
}
