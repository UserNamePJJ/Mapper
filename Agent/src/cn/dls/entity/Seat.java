package cn.dls.entity;

public class Seat {
	private int seatid;  
	  private String seatname;  //单号类型
	 private Transactiontype trans;  //交易类型
	public int getSeatid() {
		return seatid;
	}
	public void setSeatid(int seatid) {
		this.seatid = seatid;
	}
	public String getSeatname() {
		return seatname;
	}
	public void setSeatname(String seatname) {
		this.seatname = seatname;
	}
	public Transactiontype getTrans() {
		return trans;
	}
	public void setTrans(Transactiontype trans) {
		this.trans = trans;
	}
	 
	 
}
