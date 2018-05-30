package cn.dls.controller.ws;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import cn.dls.entity.Gift;
import cn.dls.service.ws.GiftService;

@Controller
public class GiftController {
	@Resource
	private GiftService giftService;

	@RequestMapping(value = "/GiftList.html")
	public String giftList(Model model,
			@RequestParam(required = false) Integer needintegral) {
		if (needintegral == null) {
			needintegral = -1;
		}
		List<Gift> gifts = giftService.findAll(needintegral);
		model.addAttribute("giftList", gifts);
		return "Giftlist";
	}

	@RequestMapping("/GiftInsert.html")
	public String insert() {
		return "GiftInsert";
	}

	@RequestMapping("/doInsert")
	public String doInsert(Gift gift,
			@RequestParam("fileEle") CommonsMultipartFile file,
			HttpServletRequest request) {
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
				FileOutputStream fos = new FileOutputStream(path + newFileName);
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
		gift.setAvatarimg( newFileName);
		// System.out.println("上传图片到:/img/" +path+ newFileName);
		// 保存文件地址，用于JSP页面回显
		int num = giftService.insert(gift);
		if (num == 1) {
			return "redirect:GiftList.html";
		}
		return "GiftInsert";
	}

	@RequestMapping("/del")
	public String doInsert(Integer id) {
		giftService.del(id);
		return "redirect:GiftList.html";
	}
}
