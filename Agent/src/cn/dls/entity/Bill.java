package cn.dls.entity;

/**
 * 订单表
 * 
 * @author Administrator
 * 
 */
public class Bill {
	private int billid;// 订单编号
	private int sellid;// 出售人编号
	private String buyid;// 购买人编号
	private String sellName;// 出售人姓名
	private String userName;//  购买人姓名
	private String state;// 状态 (已付款/未付款)
	private String transactiontimestart;// 发起交易时间
	private String transactiontimeend;// 结束交易时间
	private int commodityid;// 商品编号
	private String commodityName;//商品名称
	private double commodityprice;// 商品价格(单价)
	private int number;// 数量
	private double totalamount;// 总金额
	private String commodityavatar; //商品头像
	private int yue;
	private int billCount;
	private Wallet wallet;
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public int getSellid() {
		return sellid;
	}
	public void setSellid(int sellid) {
		this.sellid = sellid;
	}
	public String getBuyid() {
		return buyid;
	}
	public void setBuyid(String buyid) {
		this.buyid = buyid;
	}
	public String getSellName() {
		return sellName;
	}
	public void setSellName(String sellName) {
		this.sellName = sellName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTransactiontimestart() {
		return transactiontimestart;
	}
	public void setTransactiontimestart(String transactiontimestart) {
		this.transactiontimestart = transactiontimestart;
	}
	public String getTransactiontimeend() {
		return transactiontimeend;
	}
	public void setTransactiontimeend(String transactiontimeend) {
		this.transactiontimeend = transactiontimeend;
	}
	public int getCommodityid() {
		return commodityid;
	}
	public void setCommodityid(int commodityid) {
		this.commodityid = commodityid;
	}
	public String getCommodityName() {
		return commodityName;
	}
	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public double getCommodityprice() {
		return commodityprice;
	}
	public void setCommodityprice(double commodityprice) {
		this.commodityprice = commodityprice;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotalamount() {
		return totalamount;
	}
	public void setTotalamount(double totalamount) {
		this.totalamount = totalamount;
	}
	public String getCommodityavatar() {
		return commodityavatar;
	}
	public void setCommodityavatar(String commodityavatar) {
		this.commodityavatar = commodityavatar;
	}
	public int getYue() {
		return yue;
	}
	public void setYue(int yue) {
		this.yue = yue;
	}
	public int getBillCount() {
		return billCount;
	}
	public void setBillCount(int billCount) {
		this.billCount = billCount;
	}
	public Wallet getWallet() {
		return wallet;
	}
	public void setWallet(Wallet wallet) {
		this.wallet = wallet;
	} 
	
}
