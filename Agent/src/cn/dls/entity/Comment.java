package cn.dls.entity;

/**
 * 意见反馈表
 * 
 * @author Administrator
 * 
 */
public class Comment {
	private int id;// id
	private int recipientsid;// 收件人id
	private int addresser;// 发件人id
	private String recipientsidname;// 收件人
	private String addressername;// 发件人
	private String title;// 标题
	private String content;// 内容
	private String time;// 时间
	private int staticid;// 状态
	private String year;
	private int month;
	private int date;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public int getRecipientsid() {
		return recipientsid;
	}

	public void setRecipientsid(int recipientsid) {
		this.recipientsid = recipientsid;
	}

	public int getAddresser() {
		return addresser;
	}

	public void setAddresser(int addresser) {
		this.addresser = addresser;
	}

	public String getRecipientsidname() {
		return recipientsidname;
	}

	public void setRecipientsidname(String recipientsidname) {
		this.recipientsidname = recipientsidname;
	}

	public String getAddressername() {
		return addressername;
	}

	public void setAddressername(String addressername) {
		this.addressername = addressername;
	}

	public int getStaticid() {
		return staticid;
	}

	public void setStaticid(int staticid) {
		this.staticid = staticid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

}
