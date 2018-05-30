package cn.dls.service.szj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.szj.StatisticalMapper;
import cn.dls.entity.Bill;
import cn.dls.entity.Commodity;

@Service("statiticalService")
public class StatisticalServiceImpl implements StatisticalService{

	@Resource
	private StatisticalMapper statisticalMapper;
	@Override
	public Commodity kucunB() {
		// TODO Auto-generated method stub
		return statisticalMapper.kucunB();
	}
	@Override
	public int dailiCount() {
		// TODO Auto-generated method stub
		return statisticalMapper.dailiCount();
	}
	@Override
	public int kehuCount() {
		// TODO Auto-generated method stub
		return statisticalMapper.kehuCount();
	}
	@Override
	public int userCount() {
		// TODO Auto-generated method stub
		return statisticalMapper.userCount();
	}
	@Override
	public List<Bill> BilCount() {
		// TODO Auto-generated method stub
		return statisticalMapper.BilCount();
	}
	@Override
	public List<Bill> tuikuanCount() {
		// TODO Auto-generated method stub
		return statisticalMapper.tuikuanCount();
	}
	@Override
	public List<Bill> tixianMoney() {
		// TODO Auto-generated method stub
		return statisticalMapper.tixianMoney();
	}
	@Override
	public List<Bill> czMoney() {
		// TODO Auto-generated method stub
		return statisticalMapper.czMoney();
	}
	
	

}
