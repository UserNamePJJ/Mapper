package cn.dls.entity;

public class Wallet {
	private int walletid;// 钱包id
	private String transactionNum;// 交易号
	private int billid;// 订单id
	private int userid;// 用户id
	private String userName;//用户姓名
	private String transactiontimeend;// 结束交易时间(订单表transactiontimeend)
	private int transactionid;// 交易类型id
	private String typename;// 交易类型
	private double money;// 用户余额(用户表余额)
	private double transactionprice;// 交易金额  (订单总额totalamount)
	public int getWalletid() {
		return walletid;
	}
	public void setWalletid(int walletid) {
		this.walletid = walletid;
	}
	public String getTransactionNum() {
		return transactionNum;
	}
	public void setTransactionNum(String transactionNum) {
		this.transactionNum = transactionNum;
	}
	public int getBillid() {
		return billid;
	}
	public void setBillid(int billid) {
		this.billid = billid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTransactiontimeend() {
		return transactiontimeend;
	}
	public void setTransactiontimeend(String transactiontimeend) {
		this.transactiontimeend = transactiontimeend;
	}
	public int getTransactionid() {
		return transactionid;
	}
	public void setTransactionid(int transactionid) {
		this.transactionid = transactionid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public double getTransactionprice() {
		return transactionprice;
	}
	public void setTransactionprice(double transactionprice) {
		this.transactionprice = transactionprice;
	}
	public int getSeatid() {
		return seatid;
	}
	public void setSeatid(int seatid) {
		this.seatid = seatid;
	}
	private int seatid;// 单号类型id
}
