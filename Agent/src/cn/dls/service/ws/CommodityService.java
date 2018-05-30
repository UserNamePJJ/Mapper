package cn.dls.service.ws;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Commodity;
import cn.dls.entity.Voucher;

public interface CommodityService {

	List<Commodity> findAll(Integer id);

	int update(Integer intwarehouseinventory, Integer putawayinventory,
			Integer commodityid, Integer userid);

	Commodity getCommodity(Integer userid, Integer commodityid);

	List<Commodity> findList(@Param("userid") Integer userid,
			@Param("state") String state,
			@Param("commodityname") String commodityname,
			@Param("propertyname") String propertyname);

	List<String> findType();

	int countUpOrDown(@Param("state") String state,
			@Param("userid") Integer userid);

	List<Voucher> findAllVouchers();

	int CommodityAdd(Commodity commodity);

	Commodity countByName(String commodityname);
	int uthAdd(Commodity commodity);
}
