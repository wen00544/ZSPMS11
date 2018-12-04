package com.tjzs.pms.po;

import java.io.Serializable;
import java.util.Date;

/**SKU最小销售单元表
 * @author Administrator
 *
 */
public class TskuPo implements Serializable{

	/**
	 * 网络唯一标识符
	 */
	
	private static final long serialVersionUID = -7308722766523894430L;
	
	//id
	private int id;
	//商品ID
	private int pid;
	//颜色
	private String color;
	//尺码
	private int size;
	//材质
	private String feature;
	//运费
	private double trancost;
	//售价
	private double sellcost;
	//库存数
	private int recont;
	//购买限制
	private int limit;
	//仓库号
	private String wpos;
	//SKU图片
	private String skupic;
	//SKU名称
	private String skuname;
	//市场价格
	private double price;
	//销量
	private int sellcont;
	//新增人
	private int creator;
	//新增时间
	private Date creatime;
	//修改人
	private int updator;
	//修改时间
	private Date updatime;
	//安全库存
	private int safcont;
	 //生成全部的setter和getter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public double getTrancost() {
		return trancost;
	}
	public void setTrancost(double trancost) {
		this.trancost = trancost;
	}
	public double getSellcost() {
		return sellcost;
	}
	public void setSellcost(double sellcost) {
		this.sellcost = sellcost;
	}
	public int getRecont() {
		return recont;
	}
	public void setRecont(int recont) {
		this.recont = recont;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public String getWpos() {
		return wpos;
	}
	public void setWpos(String wpos) {
		this.wpos = wpos;
	}
	public String getSkupic() {
		return skupic;
	}
	public void setSkupic(String skupic) {
		this.skupic = skupic;
	}
	public String getSkuname() {
		return skuname;
	}
	public void setSkuname(String skuname) {
		this.skuname = skuname;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getSellcont() {
		return sellcont;
	}
	public void setSellcont(int sellcont) {
		this.sellcont = sellcont;
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
	public int getSafcont() {
		return safcont;
	}
	public void setSafcont(int safcont) {
		this.safcont = safcont;
	}
	

}
