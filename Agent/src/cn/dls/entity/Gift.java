package cn.dls.entity;
/**
 * 礼品表
 * @author Administrator
 *
 */
public class Gift {
	private int id;//id
	private String giftname;//礼品名称
	private String avatarimg;//礼品图片
	private int needintegral;//所需积分
	private int giftnumber;//礼品数量
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGiftname() {
		return giftname;
	}
	public void setGiftname(String giftname) {
		this.giftname = giftname;
	}
	public String getAvatarimg() {
		return avatarimg;
	}
	public void setAvatarimg(String avatarimg) {
		this.avatarimg = avatarimg;
	}
	public int getNeedintegral() {
		return needintegral;
	}
	public void setNeedintegral(int needintegral) {
		this.needintegral = needintegral;
	}
	public int getGiftnumber() {
		return giftnumber;
	}
	public void setGiftnumber(int giftnumber) {
		this.giftnumber = giftnumber;
	}
	
}
