package cn.dls.dao.szj;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;
import cn.dls.entity.User;

@Repository
public interface ConsoleMapper {

	public int daliCount();
	public int billCount();
	public int moneyCount();
	public List<Commodity> maxList();
	public int modCount();
	
	public int souCount();
	public List<User> souList();
	public int zhiCount();
	public List<User> zhiList();
	
	public List<Bill> BilCount();
	
	public List<Bill> qu2();
	
}
