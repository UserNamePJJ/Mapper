package cn.dls.service.pjj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.pjj.TransactiontypeMapper;
import cn.dls.entity.Transactiontype;
@Service("transactiontypeService")
public class TransactiontypeServiceImpl implements TransactiontypeService {
   
	
	@Resource TransactiontypeMapper transactiontype;
	
	@Override
	public List<Transactiontype> findall() {
		// TODO Auto-generated method stub
		return transactiontype.findall();
	}

}
