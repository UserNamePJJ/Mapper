package cn.dls.dao.ws;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Inventorytransaction;

@Repository
public interface InventoryMapper {
	List<Inventorytransaction> queryListByCdID(@Param("userId") Integer userId,
			@Param("cdID") Integer cdID);

	int insert(Inventorytransaction inventorytransaction);

}
