package com.tjzs.pms.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 商品表1
 * @author Administrator
 *
 */
public class TproductPo implements Serializable {

	/**
	 * 网络唯一标识符
	 */
	private static final long serialVersionUID = 4329291363684048843L;
	
	
	//id
	private int id;
	//商品名
	private String pname;
	//品牌
	private int brand;
	//重量
	private double weight;
	//是否新品
	private int isnew;
	//是否热销
	private int ishot;
	//是否推荐
	private int isrecommend;
	//商品类别
	private int ptype;
	//新增人
	private int creator;
	//新增时间
	private Date creatime;
	//审核人
	private int chktor;
	//审核时间
	private Date chktime;
	//修改人
	private int updator;
	//修改时间
	private Date updatime;
	//状态
	private int status;
	//产地
	private String fromarea;
	//描述
	private String discribe;
	//包装清单
	private String packlist;
	//属性集
	private String features;
	//颜色集
	private String colors;
	//尺码集
	private String sizes;
	//生成全部的setter 和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getBrand() {
		return brand;
	}
	public void setBrand(int brand) {
		this.brand = brand;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public int getIsnew() {
		return isnew;
	}
	public void setIsnew(int isnew) {
		this.isnew = isnew;
	}
	public int getIshot() {
		return ishot;
	}
	public void setIshot(int ishot) {
		this.ishot = ishot;
	}
	public int getIsrecommend() {
		return isrecommend;
	}
	public void setIsrecommend(int isrecommend) {
		this.isrecommend = isrecommend;
	}
	public int getPtype() {
		return ptype;
	}
	public void setPtype(int ptype) {
		this.ptype = ptype;
	}
	public int getCreator() {
		return creator;
	}
	public void setCreator(int creator) {
		this.creator = creator;
	}
	public Date getCreatime() {
		return creatime;
	}
	public void setCreatime(Date creatime) {
		this.creatime = creatime;
	}
	public int getChktor() {
		return chktor;
	}
	public void setChktor(int chktor) {
		this.chktor = chktor;
	}
	public Date getChktime() {
		return chktime;
	}
	public void setChktime(Date chktime) {
		this.chktime = chktime;
	}
	public int getUpdator() {
		return updator;
	}
	public void setUpdator(int updator) {
		this.updator = updator;
	}
	public Date getUpdatime() {
		return updatime;
	}
	public void setUpdatime(Date updatime) {
		this.updatime = updatime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getFromarea() {
		return fromarea;
	}
	public void setFromarea(String fromarea) {
		this.fromarea = fromarea;
	}
	public String getDiscribe() {
		return discribe;
	}
	public void setDiscribe(String discribe) {
		this.discribe = discribe;
	}
	public String getPacklist() {
		return packlist;
	}
	public void setPacklist(String packlist) {
		this.packlist = packlist;
	}
	public String getFeatures() {
		return features;
	}
	public void setFeatures(String features) {
		this.features = features;
	}
	public String getColors() {
		return colors;
	}
	public void setColors(String colors) {
		this.colors = colors;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}

	
}
