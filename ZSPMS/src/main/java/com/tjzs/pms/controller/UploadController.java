package com.tjzs.pms.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

/** 文件上传控制器
 * @author Administrator
 *
 */
@Controller
public class UploadController {

	/** 普通文件上传
	 * @param file 
	 * @return 新文件名
	 * @param 上传的文件  与 input的name相同
	 */
	@RequestMapping("/upload/common.do")
	@ResponseBody
	public String uploadFile(MultipartFile file,HttpServletRequest req){
		
		
		//获得upload文件夹的物理路径
		String path=req.getRealPath("/upload");
		/*uuid算法
		 * 根据网卡、时间、ip地址等信息
		 * 自动生成绝不重复的32位码
		 * 
		 * */
		UUID uuid=UUID.randomUUID();
		//目标文件名  32位码  + 文件后缀（源文件的原生文件名）
		String destfiflename=uuid.toString()+file.getOriginalFilename();
		//创建新文件
		File destfile=new File(path+File.separator+destfiflename);
		//将原始文件拷贝到新文件
		try {
			file.transferTo(destfile);
			return destfiflename;
		} catch (Exception e) {
			return "error";
		}
		
		
	}
}
