package cn.dls.service.szj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;





import cn.dls.dao.szj.ConsoleMapper;
import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;
import cn.dls.entity.User;

@Service("consoleService")
public class ConsoleServiceImpl implements ConsoleService{

	@Resource
	private ConsoleMapper consoleMapper;
	@Override
	public int daliCount() {
		// TODO Auto-generated method stub
		return consoleMapper.daliCount();
	}
	@Override
	public int billCount() {
		// TODO Auto-generated method stub
		return consoleMapper.billCount();
	}
	@Override
	public int moneyCount() {
		// TODO Auto-generated method stub
		return consoleMapper.moneyCount();
	}
	@Override
	public List<Commodity> maxList() {
		// TODO Auto-generated method stub
		return consoleMapper.maxList();
	}
	@Override
	public int modCount() {
		// TODO Auto-generated method stub
		return consoleMapper.modCount();
	}
	@Override
	public int souCount() {
		// TODO Auto-generated method stub
		return consoleMapper.souCount();
	}
	@Override
	public List<User> souList() {
		// TODO Auto-generated method stub
		return consoleMapper.souList();
	}
	@Override
	public List<User> zhiList() {
		// TODO Auto-generated method stub
		return consoleMapper.zhiList();
	}
	@Override
	public int zhiCount() {
		// TODO Auto-generated method stub
		return consoleMapper.zhiCount();
	}
	@Override
	public List<Bill> BilCount() {
		// TODO Auto-generated method stub
		return consoleMapper.BilCount();
	}
	@Override
	public List<Bill> qu2() {
		// TODO Auto-generated method stub
		return consoleMapper.qu2();
	}

}
