package cn.dls.entity;

import java.util.List;

/**
 * 用户表   代理商表   客户表
 * 
 * @author Administrator
 * 
 */
public class User {
	private int userId;// 用户id
	private String userName;// 用户名
	private String sex;// 性别
	private String userPassword;// 密码
	private String idCard;// 身份证
	private List<String> address;// 地址
	private List<String> bankCard;// 银行卡
	private String phone;// 电话
	private String email;// 邮箱
	private double money;// 金额
	private String avatar;// 头像路径
	private double monetary;// 消费金额
	private int roleId;// 角色id
	private String userRoleName;//角色名称
	private double transactionprice;
	
	
	public double getTransactionprice() {
		return transactionprice;
	}

	public void setTransactionprice(double transactionprice) {
		this.transactionprice = transactionprice;
	}

	public String getUserRoleName() {
		return userRoleName;
	}

	public void setUserRoleName(String userRoleName) {
		this.userRoleName = userRoleName;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public List<String> getAddress() {
		return address;
	}

	public void setAddress(List<String> address) {
		this.address = address;
	}

	public List<String> getBankCard() {
		return bankCard;
	}

	public void setBankCard(List<String> bankCard) {
		this.bankCard = bankCard;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public double getMonetary() {
		return monetary;
	}

	public void setMonetary(double monetary) {
		this.monetary = monetary;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
}
