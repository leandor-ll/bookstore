package com.book.domain;

public class AllOrderList {
	private String ouid;
	private String orderid;
	private Integer allPrice;
	private String ousername;
	private String ouserphone;
	private String oaddress;
	private String ostatus;
	
	
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	public String getOusername() {
		return ousername;
	}
	public void setOusername(String ousername) {
		this.ousername = ousername;
	}
	public String getOuserphone() {
		return ouserphone;
	}
	public void setOuserphone(String ouserphone) {
		this.ouserphone = ouserphone;
	}
	public String getOaddress() {
		return oaddress;
	}
	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
	public String getOuid() {
		return ouid;
	}
	public void setOuid(String ouid) {
		this.ouid = ouid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public Integer getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(Integer allPrice) {
		this.allPrice = allPrice;
	}
	
	
}
