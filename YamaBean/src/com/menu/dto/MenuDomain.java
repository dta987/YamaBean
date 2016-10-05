package com.menu.dto;

import org.springframework.web.multipart.MultipartFile;

public class MenuDomain {

	// view
	private int menu_num ;
	private String m_name ;
	private String m_group ;
	private String m_category ; 
	private MultipartFile image ;	
	private String content ; 
	private int price ;
	
	public int getMenu_num() {
		return menu_num;
	}
	public void setMenu_num(int menu_num) {
		this.menu_num = menu_num;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_group() {
		return m_group;
	}
	public void setM_group(String m_group) {
		this.m_group = m_group;
	}
	public String getM_category() {
		return m_category;
	}
	public void setM_category(String m_category) {
		this.m_category = m_category;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
}

