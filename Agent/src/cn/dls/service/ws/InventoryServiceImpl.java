package cn.dls.service.ws;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.ws.InventoryMapper;
import cn.dls.entity.Inventorytransaction;

@Service("InventoryService")
public class InventoryServiceImpl implements InventoryService {
	@Resource
	private InventoryMapper inventoryMapper;

	@Override
	public List<Inventorytransaction> queryListByCdID(Integer userId,
			Integer cdID) {
		// TODO Auto-generated method stub
		return inventoryMapper.queryListByCdID(userId, cdID);
	}

	@Override
	public int insert(Inventorytransaction inventorytransaction) {
		// TODO Auto-generated method stub
		return inventoryMapper.insert(inventorytransaction);
	}
}
