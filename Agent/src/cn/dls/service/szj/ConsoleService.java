package cn.dls.service.szj;

import java.util.List;

import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;
import cn.dls.entity.User;

public interface ConsoleService {

	public int daliCount();
	public int billCount();
	public int moneyCount();
	public List<Commodity> maxList();
	public int modCount();
	public int souCount();
	public List<User> souList();
	public List<User> zhiList();
	public int zhiCount();
	
	public List<Bill> BilCount();
	public List<Bill> qu2();
}
