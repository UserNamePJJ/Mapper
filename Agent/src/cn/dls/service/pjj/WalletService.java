package cn.dls.service.pjj;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Wallet;

public interface WalletService {
	  List<Wallet> findEvery(Integer typeid,Integer userid); //查询所有交易类型
	  List<Wallet> findEvery1(String typ,String ope,String clo,Integer name,Integer userid);
}
