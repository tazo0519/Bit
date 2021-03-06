package com.spring.partner;

import java.sql.Timestamp;

public class PartnerVO {

	private int partner_num;
	private String license_num;
	private String name;
	private String state;
	private String content;
	private String phone;
	private String email;
	private String homepage;
	private int postal_num;
	private String address;
	private String address_detail;
	private String img;
	private String term;
	private String category;
	private Timestamp accept_date;
	public int getPartner_num() {
		return partner_num;
	}
	public void setPartner_num(int partner_num) {
		this.partner_num = partner_num;
	}
	public String getLicense_num() {
		return license_num;
	}
	public void setLicense_num(String license_num) {
		this.license_num = license_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getHomepage() {
		return homepage;
	}
	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}
	public int getPostal_num() {
		return postal_num;
	}
	public void setPostal_num(int postal_num) {
		this.postal_num = postal_num;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Timestamp getAccept_date() {
		return accept_date;
	}
	public void setAccept_date(Timestamp accept_date) {
		this.accept_date = accept_date;
	}
	
	
	
	
}
