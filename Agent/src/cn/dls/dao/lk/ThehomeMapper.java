package cn.dls.dao.lk;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Commodity;

public interface ThehomeMapper {
	/**
	 * 查询导航
	 * 
	 * @return
	 */
	public List<Commodity> getCommlist();
	/**
	 * 商品
	 * @return
	 */
	public List<Commodity> getdityList(@Param("commodityname")String commodityname);
}
