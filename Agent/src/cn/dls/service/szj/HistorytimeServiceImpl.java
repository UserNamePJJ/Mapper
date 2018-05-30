package cn.dls.service.szj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.szj.HistorytimeMapper;
import cn.dls.entity.Historytime;

@Service("historyService")
public class HistorytimeServiceImpl implements HistorytimeService{

	@Resource
	public HistorytimeMapper historytimeMapper;
	@Override
	public int insert(int userid) {
		// TODO Auto-generated method stub
		return historytimeMapper.insert(userid);
	}
	@Override
	public List<Historytime> gettime(int userid, String time) {
		// TODO Auto-generated method stub
		return historytimeMapper.gettime(userid, time);
	}

}
