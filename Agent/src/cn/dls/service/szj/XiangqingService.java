package cn.dls.service.szj;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Commodity;

public interface XiangqingService {

	public Commodity getAll(int userid,int commodityid);
}
