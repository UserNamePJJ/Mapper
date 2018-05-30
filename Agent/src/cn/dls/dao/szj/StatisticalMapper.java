package cn.dls.dao.szj;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;

@Repository
public interface StatisticalMapper {

	public Commodity kucunB();
	public int dailiCount();
	public int kehuCount();
	public int userCount();
	public List<Bill> BilCount();
	public List<Bill> tuikuanCount();
	public List<Bill> tixianMoney();
	public List<Bill> czMoney();
}
