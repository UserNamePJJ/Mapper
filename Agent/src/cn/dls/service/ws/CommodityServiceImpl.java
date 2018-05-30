package cn.dls.service.ws;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.ws.CommodityMapper;
import cn.dls.entity.Commodity;
import cn.dls.entity.Voucher;

@Service("commodityService")
public class CommodityServiceImpl implements CommodityService {
	@Resource
	private CommodityMapper commodityMapper;

	public List<Commodity> findAll(Integer id) {
		return commodityMapper.findAll(id);
	}

	@Override
	public int update(Integer intwarehouseinventory, Integer putawayinventory,
			Integer commodityid, Integer userid) {
		// TODO Auto-generated method stub
		return commodityMapper.update(intwarehouseinventory, putawayinventory,
				commodityid, userid);
	}

	@Override
	public Commodity getCommodity(Integer userid, Integer commodityid) {
		// TODO Auto-generated method stub
		return commodityMapper.getCommodity(userid, commodityid);
	}

	@Override
	public List<Commodity> findList(Integer userid, String state,
			String commodityname, String propertyname) {
		// TODO Auto-generated method stub
		return commodityMapper.findList(userid, state, commodityname,
				propertyname);

	}

	@Override
	public List<String> findType() {
		// TODO Auto-generated method stub
		return commodityMapper.findType();
	}

	@Override
	public int countUpOrDown(String state, Integer userid) {
		// TODO Auto-generated method stub
		return commodityMapper.countUpOrDown(state, userid);
	}

	@Override
	public List<Voucher> findAllVouchers() {
		// TODO Auto-generated method stub
		return commodityMapper.findAllVouchers();
	}

	@Override
	public int CommodityAdd(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityMapper.CommodityAdd(commodity);
	}

	@Override
	public Commodity countByName(String commodityname) {
		// TODO Auto-generated method stub
		return commodityMapper.countByName(commodityname);
	}

	@Override
	public int uthAdd(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityMapper.uthAdd(commodity);
	}
}
