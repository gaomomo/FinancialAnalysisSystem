package com.prj.mapper;

import java.util.List;

import com.prj.bean.Report;

public interface ReportMapper {
	
	//查询所有年报信息
    public List<Report> selectAllReports();
	
	
	//模糊查询
    public List<Report> selectColumnLike(String likename);
    
  //根据年份、行业、板块查询年报表
    public List<Report> selectReportsByindustryAndblockAnd(Report report);
    
    //根据主键id查询一条年报信息
    public Report selectByPrimaryKey(int repid);

}
