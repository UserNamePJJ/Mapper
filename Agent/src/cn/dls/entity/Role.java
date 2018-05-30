package cn.dls.entity;
/**
 * 角色表
 * @author Administrator
 *
 */
public class Role {
	private int roleid;//角色id
	private String roleName;//橘色名称
	private double discount;//折扣
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
}
