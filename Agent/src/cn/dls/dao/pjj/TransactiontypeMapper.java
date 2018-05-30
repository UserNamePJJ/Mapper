package cn.dls.dao.pjj;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.dls.entity.Transactiontype;
@Repository
public interface TransactiontypeMapper {
       List<Transactiontype> findall();  //查询所有交易类型
}
