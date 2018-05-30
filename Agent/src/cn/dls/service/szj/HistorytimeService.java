package cn.dls.service.szj;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Historytime;

public interface HistorytimeService {

	public int insert(int userid);
	public List<Historytime> gettime(int userid,String time);
}
