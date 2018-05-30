package cn.dls.service.ws;

import java.util.List;

import cn.dls.entity.Inventorytransaction;
public interface InventoryService {
	List<Inventorytransaction> queryListByCdID(Integer userId,Integer cdID);

	int insert(Inventorytransaction inventorytransaction);
}
