package cn.dls.service.szj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.szj.TimeoutMapper;
import cn.dls.entity.Timeout;

@Service("timeService")
public class TimeoutServiceImpl implements TimeoutService{

	@Resource
	public TimeoutMapper timeoutMapper;
	@Override
	public List<Timeout> getTimeoutlist(int userid) {
		// TODO Auto-generated method stub
		return timeoutMapper.getTimeoutlist(userid);
	}
	@Override
	public int inserInfo(Timeout timeout) {
		// TODO Auto-generated method stub
		return timeoutMapper.inserInfo(timeout);
	}
	@Override
	public Timeout getinfoBytitle(String title) {
		// TODO Auto-generated method stub
		return timeoutMapper.getinfoBytitle(title);
	}
	@Override
	public int deleteinfo(int id) {
		// TODO Auto-generated method stub
		return timeoutMapper.deleteinfo(id);
	}

}
