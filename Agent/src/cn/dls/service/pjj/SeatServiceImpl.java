package cn.dls.service.pjj;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.pjj.SeatMapper;
import cn.dls.entity.Seat;
@Service("seatService")
public class SeatServiceImpl implements SeatService {
   
	@Resource
	private SeatMapper seat;
	
	@Override
	public List<Seat> findall() {
		// TODO Auto-generated method stub
		return seat.findall();
	}

}
