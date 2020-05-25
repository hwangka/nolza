package model.dto;

import java.util.Date;

public class GoodsDTO {
	/*
	 * create table goods( gdsNo int(5) not null primary key auto_increment, 
	 * gdsName varchar(100) not null, gdsCat varchar(50) not null,
	 * gdsLati decimal(16,14) not null, 
	 * gdsLong decimal(17,14) not null,
	 * gdsImg varchar(200), 
	 * gdsTimg varchar(200), 
	 * gdsOldadd varchar(200), 
	 * gdsNewadd varchar(200), 
	 * gdsTel varchar(20), 
	 * gdsNos int(5), 
	 * gdsNop int(5), 
	 * gdsCon varchar(500), 
	 * gdsSafe varchar(500), 
	 * gdsEtc varchar(500), 
	 * gdsUtime varchar(300), 
	 * gdsPrice varchar(500) )
	 */
	private int gdsNo;
	private String gdsName;
	private String gdsCat;
	private String gdsImg;
	private String gdsTimg;
	private String gdsOldadd;
	private String gdsNewadd;
	private String gdsTel;
	private int gdsNos;
	private int gdsNop;
	private String gdsCon;
	private String gdsSafe;
	private String gdsEtc;
	private String gdsUtime;
	private String gdsPrice;
	private Date gdsDate;
	
	public int getGdsNo() {
		return gdsNo;
	}
	public void setGdsNo(int gdsNo) {
		this.gdsNo = gdsNo;
	}
	public String getGdsName() {
		return gdsName;
	}
	public void setGdsName(String gdsName) {
		this.gdsName = gdsName;
	}
	public String getGdsCat() {
		return gdsCat;
	}
	public void setGdsCat(String gdsCat) {
		this.gdsCat = gdsCat;
	}
	public String getGdsImg() {
		return gdsImg;
	}
	public void setGdsImg(String gdsImg) {
		this.gdsImg = gdsImg;
	}
	public String getGdsTimg() {
		return gdsTimg;
	}
	public void setGdsTimg(String gdsTimg) {
		this.gdsTimg = gdsTimg;
	}
	public String getGdsOldadd() {
		return gdsOldadd;
	}
	public void setGdsOldadd(String gdsOldadd) {
		this.gdsOldadd = gdsOldadd;
	}
	public String getGdsNewadd() {
		return gdsNewadd;
	}
	public void setGdsNewadd(String gdsNewadd) {
		this.gdsNewadd = gdsNewadd;
	}
	public String getGdsTel() {
		return gdsTel;
	}
	public void setGdsTel(String gdsTel) {
		this.gdsTel = gdsTel;
	}
	public int getGdsNos() {
		return gdsNos;
	}
	public void setGdsNos(int gdsNos) {
		this.gdsNos = gdsNos;
	}
	public int getGdsNop() {
		return gdsNop;
	}
	public void setGdsNop(int gdsNop) {
		this.gdsNop = gdsNop;
	}
	public String getGdsCon() {
		return gdsCon;
	}
	public void setGdsCon(String gdsCon) {
		this.gdsCon = gdsCon;
	}
	public String getGdsSafe() {
		return gdsSafe;
	}
	public void setGdsSafe(String gdsSafe) {
		this.gdsSafe = gdsSafe;
	}
	public String getGdsEtc() {
		return gdsEtc;
	}
	public void setGdsEtc(String gdsEtc) {
		this.gdsEtc = gdsEtc;
	}
	public String getGdsUtime() {
		return gdsUtime;
	}
	public void setGdsUtime(String gdsUtime) {
		this.gdsUtime = gdsUtime;
	}
	public String getGdsPrice() {
		return gdsPrice;
	}
	public void setGdsPrice(String gdsPrice) {
		this.gdsPrice = gdsPrice;
	}
	public Date getGdsDate() {
		return gdsDate;
	}
	public void setGdsDate(Date gdsDate) {
		this.gdsDate = gdsDate;
	}
	
}
