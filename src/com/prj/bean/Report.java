package com.prj.bean;


public class Report {
	private Integer report_id;
	private String report_name;
	private String report_readability;
	private String report_emotion;
	private String report_risk;
	private String report_memory;
	private String report_wordage;
	private String report_release_date;
	private String report_year;
	private String stock_code;
	private String stock_name;
	private String report_kind;
	private String report_industry;
	private String report_block;
	private String report_territory;
	private String report_address;
	
	public Integer getReport_id() {
		return report_id;
	}
	public void setReport_id(Integer report_id) {
		this.report_id = report_id;
	}
	public String getReport_name() {
		return report_name;
	}
	public void setReport_name(String report_name) {
		this.report_name = report_name;
	}
	public String getReport_readability() {
		return report_readability;
	}
	public void setReport_readability(String report_readability) {
		this.report_readability = report_readability;
	}
	public String getReport_emotion() {
		return report_emotion;
	}
	public void setReport_emotion(String report_emotion) {
		this.report_emotion = report_emotion;
	}
	public String getReport_risk() {
		return report_risk;
	}
	public void setReport_risk(String report_risk) {
		this.report_risk = report_risk;
	}
	public String getReport_memory() {
		return report_memory;
	}
	public void setReport_memory(String report_memory) {
		this.report_memory = report_memory;
	}
	public String getReport_wordage() {
		return report_wordage;
	}
	public void setReport_wordage(String report_wordage) {
		this.report_wordage = report_wordage;
	}
	public String getReport_release_date() {
		return report_release_date;
	}
	public void setReport_release_date(String report_release_date) {
		this.report_release_date = report_release_date;
	}
	public String getReport_year() {
		return report_year;
	}
	public void setReport_year(String report_year) {
		this.report_year = report_year;
	}
	public String getStock_code() {
		return stock_code;
	}
	public void setStock_code(String stock_code) {
		this.stock_code = stock_code;
	}
	public String getStock_name() {
		return stock_name;
	}
	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}
	public String getReport_kind() {
		return report_kind;
	}
	public void setReport_kind(String report_kind) {
		this.report_kind = report_kind;
	}
	public String getReport_industry() {
		return report_industry;
	}
	public void setReport_industry(String report_industry) {
		this.report_industry = report_industry;
	}
	public String getReport_block() {
		return report_block;
	}
	public void setReport_block(String report_block) {
		this.report_block = report_block;
	}
	public String getReport_territory() {
		return report_territory;
	}
	public void setReport_territory(String report_territory) {
		this.report_territory = report_territory;
	}
	public String getReport_address() {
		return report_address;
	}
	public void setReport_address(String report_address) {
		this.report_address = report_address;
	}
	@Override
	public String toString() {
		return "Report [report_id=" + report_id + ", report_name=" + report_name + ", report_readability="
				+ report_readability + ", report_emotion=" + report_emotion + ", report_risk=" + report_risk
				+ ", report_memory=" + report_memory + ", report_wordage=" + report_wordage + ", report_release_date="
				+ report_release_date + ", report_year=" + report_year + ", stock_code=" + stock_code + ", stock_name="
				+ stock_name + ", report_kind=" + report_kind + ", report_industry=" + report_industry
				+ ", report_block=" + report_block + ", report_territory=" + report_territory + ", report_address="
				+ report_address + "]";
	}

	
}
