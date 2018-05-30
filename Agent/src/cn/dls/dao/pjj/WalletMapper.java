package cn.dls.dao.pjj;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Wallet;
@Repository
public interface WalletMapper {
          List<Wallet> findEvery(@Param("typeid")int typeid,@Param("userid")int userid); 
          
          List<Wallet> findEvery1(@Param("typ")String typ,@Param("ope")String ope,@Param("clo")String clo,@Param("name")Integer name,@Param("userid")int userid);
}
