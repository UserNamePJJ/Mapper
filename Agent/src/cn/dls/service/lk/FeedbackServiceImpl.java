package cn.dls.service.lk;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.dls.dao.lk.FeedbackMapper;
import cn.dls.entity.Comment;

@Service("feedbackService")
public class FeedbackServiceImpl implements FeedbackService {
	@Resource
	private FeedbackMapper feedbackMapper;

	@Override
	public List<Comment> getComments(int userid) {
		// TODO Auto-generated method stub
		return feedbackMapper.getComments(userid);
	}

	@Override
	public int remove(int id) {
		// TODO Auto-generated method stub
		return feedbackMapper.remove(id);
	}

	@Override
	public Comment showone(int id) {
		// TODO Auto-generated method stub
		return feedbackMapper.showone(id);
	}

	@Override
	public int addComment(int fasong, int shou, String title, String context) {
		// TODO Auto-generated method stub
		return feedbackMapper.addComment(fasong, shou, title, context);
	}

	@Override
	public int updatestatic(int id) {
		// TODO Auto-generated method stub
		return feedbackMapper.updatestatic(id);
	}

}
