package cn.dls.dao.pjj;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Bill;
@Repository
public interface BillMapper {
	 List<Bill> findall(@Param("userId")int userId,@Param("roleId")int roleId);    //查询代理商所有订单信息
	 List<Bill> findallbuy(@Param("userId")int userId,@Param("roleId")int roleId);    //查询客户所有订单信息
     List<Bill> getlist(@Param("userId")int userId,@Param("roleId")int roleId,@Param("billid")int billid,@Param("commodityName")String commodityName,@Param("userName")String userName,@Param("address")String address);    //根据条件查询所有订单信息
     List<Bill> getlist1(@Param("userId")int userId,@Param("roleId")int roleId,@Param("state")String state);    //代理商根据状态查询订单信息
     List<Bill> getlist2(@Param("userId")int userId,@Param("roleId")int roleId,@Param("state")String state);    //用户根据状态查询订单信息
     public  Integer delete1(@Param("billid")int billid);  //根据订单号删除
     List<Bill> selectbill(@Param("billid")int billid);  //订单详细信息
}
