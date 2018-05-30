package cn.dls.service.ws;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.ws.GiftMapper;
import cn.dls.entity.Gift;

@Service("GiftService")
public class GiftServiceImpl implements GiftService {
	@Resource
	private GiftMapper giftMapper;

	@Override
	public List<Gift> findAll(Integer needintegral) {
		// TODO Auto-generated method stub
		return giftMapper.findAll(needintegral);
	}

	@Override
	public int insert(Gift gift) {
		// TODO Auto-generated method stub
		return giftMapper.insert(gift);
	}

	@Override
	public int del(Integer id) {
		// TODO Auto-generated method stub
		return giftMapper.del(id);
	}
}
