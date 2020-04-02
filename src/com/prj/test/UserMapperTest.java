package com.prj.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.prj.bean.Report;
import com.prj.mapper.ReportMapper;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring/applicationContext-*.xml")
public class UserMapperTest {
	
	@Resource
	ReportMapper reportMapper;

	@Test
	public void findAll() {
		List<Report>  reports = reportMapper.selectColumnLike("2017");
		System.out.println(reports);
	}
	
	@Test
	public void selectReportsByindustryAndblockAnd() {
		Report report = new Report();
		report.setReport_year("2017");
		report.setReport_industry("软件");
		report.setReport_block("主板");
		List<Report>  reports = reportMapper.selectReportsByindustryAndblockAnd(report);
		for (Report report2 : reports) {
			System.out.println(report2.getReport_id());
		}
	}

}
