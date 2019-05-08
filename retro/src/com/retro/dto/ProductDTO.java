package com.retro.dto;

import java.util.Date;

public class ProductDTO {
	private String p_code;	
	private String p_name; 
	private int p_price; 
	private String p_img; 
	private String p_type; 
	private int p_cnt; 
	private int p_good;
	private Date p_indate;

	public ProductDTO() {
		
	}

	public ProductDTO(String p_code, String p_name, int p_price, String p_img, String p_type, int p_cnt, int p_good,
			Date p_indate) {
		super();
		this.p_code = p_code;
		this.p_name = p_name;
		this.p_price = p_price;
		this.p_img = p_img;
		this.p_type = p_type;
		this.p_cnt = p_cnt;
		this.p_good = p_good;
		this.p_indate = p_indate;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public String getP_type() {
		return p_type;
	}

	public void setP_type(String p_type) {
		this.p_type = p_type;
	}

	public int getP_cnt() {
		return p_cnt;
	}

	public void setP_cnt(int p_cnt) {
		this.p_cnt = p_cnt;
	}

	public int getP_good() {
		return p_good;
	}

	public void setP_good(int p_good) {
		this.p_good = p_good;
	}

	public Date getP_indate() {
		return p_indate;
	}

	public void setP_indate(Date p_indate) {
		this.p_indate = p_indate;
	}

	@Override
	public String toString() {
		return "ProductDTO [p_code=" + p_code + ", p_name=" + p_name + ", p_price=" + p_price + ", p_img=" + p_img
				+ ", p_type=" + p_type + ", p_cnt=" + p_cnt + ", p_good=" + p_good + ", p_indate=" + p_indate + "]";
	}
	
	
	







}

