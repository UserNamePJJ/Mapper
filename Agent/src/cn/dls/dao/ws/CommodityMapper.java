package cn.dls.dao.ws;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Commodity;
import cn.dls.entity.Voucher;

@Repository
public interface CommodityMapper {
	/**
	 * 查询指定用户的所有商品
	 * 
	 * @param id
	 * @return
	 */
	List<Commodity> findAll(Integer id);

	/**
	 * 修改仓库数量
	 * 
	 * @param intwarehouseinventory
	 *            仓库库存
	 * @param putawayinventory
	 *            上架库存
	 * @param commodityid
	 *            商品id
	 * @param userid
	 *            用户id
	 * @return
	 */
	int update(@Param("warehouseinventory") Integer warehouseinventory,
			@Param("putawayinventory") Integer putawayinventory,
			@Param("commodityid") Integer commodityid,
			@Param("userid") Integer userid);

	Commodity getCommodity(@Param("userid") Integer userid,
			@Param("commodityid") Integer commodityid);

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
