package cn.dls.entity;
/**
 * 商品表   库存表
 * @author Administrator
 *
 */
public class Commodity {
	private int id;//id
	private int userid;//用户id
	private int commodityid;// 商品编号
	private String commodityname;// 商品名称
	private String propertyname;// 属性名称
	private double commodityprice;// 商品价格
	private String commodityavatar;// 商品图片1
	private String commodityimg;// 商品图片2
	private int integral;// 购买此商品有多少积分
	private String vouchersid;// 抵用卷级别
	private int number;//数量
	private int sales;//销量
	private int ispinkage;//是否包邮  0为否 1为是
	private int issales;//是否显示销量
	private int isstick;//是否置顶
	private int isvouchers;//是否可以使用抵用卷
	private int isintegral;//是否有积分
	private int totalinventory;//总库存
	private int warehouseinventory;//仓库库存
	private int putawayinventory;//上架库存
	private int state;//状态
	
	private double discount;//折扣
	
	private double doDiscount;//计算后的折扣价格
	
	

	public String getCommodityimg() {
		return commodityimg;
	}

	public void setCommodityimg(String commodityimg) {
		this.commodityimg = commodityimg;
	}

	public double getDoDiscount() {
		return doDiscount;
	}

	public void setDoDiscount(double doDiscount) {
		this.doDiscount = doDiscount;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getCommodityid() {
		return commodityid;
	}
	public void setCommodityid(int commodityid) {
		this.commodityid = commodityid;
	}
	public String getCommodityname() {
		return commodityname;
	}
	public void setCommodityname(String commodityname) {
		this.commodityname = commodityname;
	}
	public String getPropertyname() {
		return propertyname;
	}
	public void setPropertyname(String propertyname) {
		this.propertyname = propertyname;
	}
	public double getCommodityprice() {
		return commodityprice;
	}
	public void setCommodityprice(double commodityprice) {
		this.commodityprice = commodityprice;
	}
	public String getCommodityavatar() {
		return commodityavatar;
	}
	public void setCommodityavatar(String commodityavatar) {
		this.commodityavatar = commodityavatar;
	}
	public int getIntegral() {
		return integral;
	}

	public void setIntegral(int integral) {
		this.integral = integral;
	}

	public String getVouchersid() {
		return vouchersid;
	}
	public void setVouchersid(String vouchersid) {
		this.vouchersid = vouchersid;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getIspinkage() {
		return ispinkage;
	}
	public void setIspinkage(int ispinkage) {
		this.ispinkage = ispinkage;
	}
	public int getIssales() {
		return issales;
	}
	public void setIssales(int issales) {
		this.issales = issales;
	}
	public int getIsstick() {
		return isstick;
	}
	public void setIsstick(int isstick) {
		this.isstick = isstick;
	}
	public int getIsvouchers() {
		return isvouchers;
	}
	public void setIsvouchers(int isvouchers) {
		this.isvouchers = isvouchers;
	}
	public int getIsintegral() {
		return isintegral;
	}
	public void setIsintegral(int isintegral) {
		this.isintegral = isintegral;
	}
	public int getTotalinventory() {
		return totalinventory;
	}
	public void setTotalinventory(int totalinventory) {
		this.totalinventory = totalinventory;
	}
	public int getWarehouseinventory() {
		return warehouseinventory;
	}
	public void setWarehouseinventory(int warehouseinventory) {
		this.warehouseinventory = warehouseinventory;
	}
	public int getPutawayinventory() {
		return putawayinventory;
	}
	public void setPutawayinventory(int putawayinventory) {
		this.putawayinventory = putawayinventory;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}

}
