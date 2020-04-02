package com.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prj.bean.Report;
import com.prj.mapper.ReportMapper;
import com.prj.service.ReportService;

@Service
public class ReportServiceImpl implements ReportService{

	@Autowired
	ReportMapper reportMapper;
	
	//查询所有年报信息
	@Override
    public List<Report> selectAllReports(){
		
		return reportMapper.selectAllReports();
	}

	@Override
	public List<Report> selectColumnLike(String likename) {
		
		return reportMapper.selectColumnLike(likename);
	}
	
	//根据年份、行业、板块查询年报表
	@Override
    public List<Report> selectReportsByindustryAndblockAnd(Report report){
		
		return reportMapper.selectReportsByindustryAndblockAnd(report);
    	
    }
	
    //根据主键id查询一条年报信息
    public Report selectByPrimaryKey(int repid) {
    	
    	return reportMapper.selectByPrimaryKey(repid);
    }
}
