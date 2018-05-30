package cn.dls.service.szj;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.szj.XiangqingMapper;
import cn.dls.entity.Commodity;

@Service("xiangqingService")
public class XiangqingServiceImpl implements XiangqingService {

	@Resource
	private XiangqingMapper xiangqingMapper;
	@Override
	public Commodity getAll(int userid,int commodityid) {
		// TODO Auto-generated method stub
		return xiangqingMapper.getAll(userid, commodityid);
	}

}
