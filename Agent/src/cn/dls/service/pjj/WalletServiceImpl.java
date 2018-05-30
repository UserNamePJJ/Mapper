package cn.dls.service.pjj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.pjj.WalletMapper;
import cn.dls.entity.Wallet;
@Service("WalletService")
public class WalletServiceImpl implements WalletService {
       
	@Resource
	private WalletMapper wallet;
	
	@Override
	public List<Wallet> findEvery(Integer typeid,Integer userid) {
		// TODO Auto-generated method stub
		return wallet.findEvery(typeid,userid);
	}

	@Override
	public List<Wallet> findEvery1(String typ, String ope, String clo,
			Integer name,Integer userid) {
		// TODO Auto-generated method stub
		return wallet.findEvery1(typ, ope, clo, name,userid);
	}

}
