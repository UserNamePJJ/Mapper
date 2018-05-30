package cn.dls.entity;
/**
 * 库存出入记录表
 * @author Administrator
 *
 */
public class Inventorytransaction {
	private int id;// id
	private int userid;// 用户id
	private String commodityid;// 商品id
	private String commodityname;// 商品名称
	private String propertyname;// 属性名称
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
	public String getCommodityid() {
		return commodityid;
	}
	public void setCommodityid(String commodityid) {
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
	public String getTransactiontype() {
		return transactiontype;
	}
	public void setTransactiontype(String transactiontype) {
		this.transactiontype = transactiontype;
	}
	public int getTransactionnum() {
		return transactionnum;
	}
	public void setTransactionnum(int transactionnum) {
		this.transactionnum = transactionnum;
	}
	public int getTotalinventory() {
		return totalinventory;
	}
	public void setTotalinventory(int totalinventory) {
		this.totalinventory = totalinventory;
	}
	public String getTransactiontime() {
		return transactiontime;
	}
	public void setTransactiontime(String transactiontime) {
		this.transactiontime = transactiontime;
	}
	private String transactiontype;// 交易类型(出库/入库)
	private int transactionnum;// 交易数量
	private int totalinventory;//总库存(utheircomm表)
	private String transactiontime;// 交易时间
}
