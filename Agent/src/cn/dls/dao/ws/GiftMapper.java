package cn.dls.dao.ws;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Gift;

@Repository
public interface GiftMapper {
	/**
	 * 查询指定用户的所有商品
	 * 
	 * @param id
	 * @return
	 */
	List<Gift> findAll(@Param("needintegral")Integer needintegral);

	int insert(Gift gift);

	int del(Integer id);

}
