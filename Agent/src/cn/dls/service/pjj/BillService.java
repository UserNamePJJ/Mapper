package cn.dls.service.pjj;

import java.util.List;

import cn.dls.entity.Bill;

public interface BillService {
	 List<Bill> findall(int userId,int roleId);    //查询当前代理商所有信息
	 List<Bill> findallbuy(int userId,int roleId);    //查询客户所有订单信息
	 List<Bill> getlist(int userId,int roleId,int billid,String commodityName,String userName,String address);    //根据条件查询所有信息
	 List<Bill> getlist1(int userId,int roleId,String state);    //代理商根据状态查询订单信息
     List<Bill> getlist2(int userId,int roleId,String state);    //用户根据状态查询订单信息
     Integer delete(int billid);  //根据订单号删除
     List<Bill> selectbill(int billid);  //订单详细信息
}
