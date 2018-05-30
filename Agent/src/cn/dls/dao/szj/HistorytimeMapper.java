package cn.dls.dao.szj;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Historytime;



@Repository
public interface HistorytimeMapper {

	public int insert(int userid);
	public List<Historytime> gettime(@Param("userid")int userid,@Param("time")String time);
}
