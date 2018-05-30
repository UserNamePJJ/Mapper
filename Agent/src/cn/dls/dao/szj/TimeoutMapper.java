package cn.dls.dao.szj;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.dls.entity.Timeout;
@Repository
public interface TimeoutMapper {

	public List<Timeout> getTimeoutlist(int userid);
	public int inserInfo(Timeout timeout);
	public Timeout getinfoBytitle(String title);
	public int deleteinfo(int id);
}
