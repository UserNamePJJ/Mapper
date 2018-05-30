package cn.dls.service.szj;

import java.util.List;

import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;

public interface StatisticalService {

	public Commodity kucunB();
	public int dailiCount();
	public int kehuCount();
	public int userCount();
	public List<Bill> BilCount();
	public List<Bill> tuikuanCount();
	public List<Bill> tixianMoney();
	public List<Bill> czMoney();
}
