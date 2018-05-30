package cn.dls.service.lk;

import java.util.List;

import cn.dls.entity.Commodity;

public interface ThehomeService {
	/**
	 * 导航
	 * @return
	 */
	public List<Commodity> getCommlist( );
	/**
	 * 内容
	 * @return
	 */
	public List<Commodity> getCommoditList( String commodityname);
}
