package cn.dls.service.lk;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.lk.ThehomeMapper;
import cn.dls.entity.Commodity;
@Service("thehomeService")
public class ThehomeServiceImpl implements ThehomeService {
	@Resource
	private ThehomeMapper thehomeMapper;
	@Override
	public List<Commodity> getCommlist( ) {
		// TODO Auto-generated method stub
		return thehomeMapper.getCommlist();
	}
	@Override
	public List<Commodity> getCommoditList(String commodityname) {
		// TODO Auto-generated method stub
		return thehomeMapper.getdityList(commodityname);
	}
}
