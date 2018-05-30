package cn.dls.service.pjj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.pjj.BillMapper;
import cn.dls.entity.Bill;
@Service("billService")
public class BillServiceImpl implements BillService {
   @Resource
   private BillMapper billMapper;
	
   @Override
	public List<Bill> findall(int userId, int roleId) {
		// TODO Auto-generated method stub
		return billMapper.findall(userId, roleId);
	}


	@Override
	public List<Bill> getlist(int userId,int roleId, int billid, String commodityName,
			String userName,String address) {
		// TODO Auto-generated method stub
		return billMapper.getlist(userId,roleId, billid, commodityName, userName,address);
	}


	@Override
	public List<Bill> getlist1(int userId, int roleId, String state) {
		// TODO Auto-generated method stub
		return billMapper.getlist1(userId, roleId, state);
	}


	@Override
	public List<Bill> findallbuy(int userId, int roleId) {
		// TODO Auto-generated method stub
		return billMapper.findallbuy(userId, roleId);
	}


	@Override
	public List<Bill> getlist2(int userId, int roleId, String state) {
		// TODO Auto-generated method stub
		return billMapper.getlist2(userId, roleId, state);
	}


	@Override
	public Integer delete(int billid) {
		// TODO Auto-generated method stub
		return billMapper.delete1(billid);
	}


	@Override
	public List<Bill> selectbill(int billid) {
		// TODO Auto-generated method stub
		return billMapper.selectbill(billid);
	}


}