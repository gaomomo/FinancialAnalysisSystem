package com.prj.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prj.bean.Report;
import com.prj.service.ReportService;

@Controller
@RequestMapping(value="/report")
public class ReportController {

	@Autowired
	ReportService reportService;
	
	//首页所有年报信息 
		@RequestMapping("/selectAllReports")
		public String selectAllReports(HttpServletRequest request) throws UnsupportedEncodingException{
			List<Report> reports =reportService.selectAllReports();
			request.setAttribute("reports", reports);
			return "showReports";
		}
		
	//首页模糊查询年报信息 
	@RequestMapping("/selectColumnLike")
	public String selectColumnLike(HttpServletRequest request,String likename) throws UnsupportedEncodingException{
		if (likename == null) {
			return "showLikeReports";
		}
		String like = new String(likename.getBytes("ISO-8859-1"), "utf-8");
		System.out.println("likename:"+like);
		List<Report> reports =reportService.selectColumnLike(like);
		request.setAttribute("reports", reports);
		return "showLikeReports";
	}
	
	 	//根据年份、行业、板块查询年报表
		@RequestMapping("/selectReportsByindustryAndblockAnd")
		public String selectReportsByindustryAndblockAnd(HttpServletRequest request,
				String report_industry,String report_block,String report_year) throws Exception{	
			
			String industry = new String(report_industry.getBytes("ISO-8859-1"), "utf-8");
			String block = new String(report_block.getBytes("ISO-8859-1"), "utf-8");
			String year = new String(report_year.getBytes("ISO-8859-1"), "utf-8");
			System.out.println("输入行业是："+industry+"，输入板块是："+block+"，输入年份是："+year);
			
			Report report1 = new Report();
			report1.setReport_industry(industry);
			report1.setReport_block(block);
			report1.setReport_year(year);
			System.out.println("带入参数后为：" + report1.toString());
			
			List<Report> reports =  reportService.selectReportsByindustryAndblockAnd(report1);
			request.setAttribute("reports", reports);

			return "showLikeReports";
		}
		
		//根据主键id查询一条年报信息
		@RequestMapping("/selectByPrimaryKey/{report_id}")
		public String selectByPrimaryKey(HttpServletRequest request,@PathVariable("report_id") Integer report_id) throws UnsupportedEncodingException{
			System.out.println(report_id);
			Report reports =reportService.selectByPrimaryKey(report_id);
			request.setAttribute("reports", reports);
			return "showByidReports";
		}
		
/*		//下载后台代码
		@RequestMapping("/filePreview")
		public ResponseEntity<byte[]> download(String fileName) throws IOException {
	        String filePath = "G:\\reports\\";
	        File file = new File(filePath + fileName);
	        // 处理显示中文文件名的问题
	        String newFilename = new String(fileName.getBytes("UTF-8"),
	                "iso-8859-1");
	        // 设置请求头内容,告诉浏览器代开下载窗口
	        HttpHeaders headers = new HttpHeaders();
	        headers.setContentDispositionFormData("attachment", newFilename);
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),
	                headers, HttpStatus.CREATED);
	    }*/
		 //storeName是文件名


		@RequestMapping("/filePreview")
		@ResponseBody
		public void filePreview(HttpServletRequest request, HttpServletResponse response, String fileName) throws Exception {
		request.setCharacterEncoding("UTF-8");
		String fileName2 = new String(fileName.getBytes("ISO-8859-1"), "utf-8");
		String downLoadPath = "G:\\reports\\" + fileName2;
		System.out.println("拼接的路径为：" + downLoadPath);
		response.setContentType("application/pdf");
		FileInputStream in = new FileInputStream(new File(downLoadPath));
		OutputStream out = response.getOutputStream();
		byte[] b = new byte[512];
		while ((in.read(b))!=-1) {
		out.write(b);
		}
		out.flush();
		in.close();
		out.close();
		}

}
