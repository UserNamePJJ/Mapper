package cn.dls.controller.ws;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.dls.entity.Commodity;
import cn.dls.entity.User;
import cn.dls.entity.Voucher;
import cn.dls.service.ws.CommodityService;

@Controller
public class CommodityController {
	@Resource
	private CommodityService commodityService;

	// 库存查看
	@RequestMapping("/inventorylist")
	public String inventoryview(Model model, HttpSession session) {
		User user = (User) session.getAttribute("user");
		List<Commodity> list = commodityService.findAll(user.getUserId());
		model.addAttribute("kucun", list);
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "inventorylist";
		} else {
			return "agentjsp/inventorylist";
		}
	}

	// 商品管理
	@RequestMapping("/commoditylist")
	public String commoditylist(Model model, HttpSession session, String state,
			String propertyname, String commodityname) {
		User user = (User) session.getAttribute("user");
		int userid = user.getUserId();
		int countUp = commodityService.countUpOrDown("上架", userid);
		int countDown = commodityService.countUpOrDown("下架", userid);
		List<Commodity> list = commodityService.findList(userid, state,
				commodityname, propertyname);
		List<String> types = commodityService.findType();
		model.addAttribute("types", types);
		model.addAttribute("commodityList", list);
		model.addAttribute("countUp", countUp);
		model.addAttribute("countDown", countDown);
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "commoditylist";
		} else {
			return "agentjsp/commoditylist";
		}
	}

	@RequestMapping("/commodityAdd")
	public String commodityAdd(Model model, Commodity commodity,HttpSession session) {
		List<Voucher> vouchers = commodityService.findAllVouchers();
		List<String> types = commodityService.findType();
		model.addAttribute("vouchers", vouchers);
		model.addAttribute("types", types);
		String loginrole = (String) session.getAttribute("loginrole");
		if (loginrole == "1") {
			return "commodityAdd";
		} else {
			return "agentjsp/commodityAdd";
		}
	}

	/*
	 * @RequestMapping("/checkCommodityname")
	 * 
	 * @ResponseBody public String checkName(String commodityname) {
	 * 
	 * return JSON.toJSONString(commodityService.countByName(commodityname)); }
	 */

	@RequestMapping("/doCommodityAdd")
	public String doInsert(Commodity commodity, HttpSession session,
			@RequestParam("fileEle") CommonsMultipartFile file,
			HttpServletRequest request) {
		Commodity commodity2 = commodityService.countByName(commodity
				.getCommodityname());
		if (commodity2 == null) {
			// 获得原始文件名
			String fileName = file.getOriginalFilename();
			// 新文件名
			String newFileName = UUID.randomUUID() + fileName;
			// 获得项目的路径
			ServletContext sc = request.getSession().getServletContext();
			// 上传位置
			String path = sc.getRealPath("/statics/img") + "/"; // 设定文件保存的目录
			File f = new File(path);
			if (!f.exists())
				f.mkdirs();
			if (!file.isEmpty()) {
				try {
					FileOutputStream fos = new FileOutputStream(path
							+ newFileName);
					InputStream in = file.getInputStream();
					int b = 0;
					while ((b = in.read()) != -1) {
						fos.write(b);
					}
					fos.close();
					in.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			commodity.setCommodityavatar(newFileName);
			// System.out.println("上传图片到:/img/" +path+ newFileName);
			// 保存文件地址，用于JSP页面回显
			int num = commodityService.CommodityAdd(commodity);

			commodity2 = commodityService.countByName(commodity
					.getCommodityname());
		}
		User user = (User) session.getAttribute("user");
		commodity.setUserid(user.getUserId());
		commodity.setCommodityid(commodity2.getCommodityid());
		int num = commodityService.uthAdd(commodity);
		if (num == 1) {
			return "redirect:commoditylist";
		}
		return "redirect:commodityAdd";
	}
	
}
