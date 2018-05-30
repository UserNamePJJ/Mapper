package cn.dls.service.ws;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.dls.entity.Gift;

@Repository
public interface GiftService {
	/**
	 * 查询指定用户的所有商品
	 * 
	 * @param id
	 * @return
	 */
	List<Gift> findAll(Integer needintegral);

	int insert(Gift gift);

	int del(Integer id);
}
