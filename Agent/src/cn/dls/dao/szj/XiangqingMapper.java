package cn.dls.dao.szj;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Commodity;

@Repository
public interface XiangqingMapper {

	public Commodity getAll(@Param("userid") int userid,@Param("commodityid") int commodityid);
}
