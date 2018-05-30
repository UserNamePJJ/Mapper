package cn.dls.service.szj;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.dls.entity.Timeout;


public interface TimeoutService {

	public List<Timeout> getTimeoutlist(int userid);
	public int inserInfo(Timeout timeout);
	public Timeout getinfoBytitle(String title);
	public int deleteinfo(int id);
}
