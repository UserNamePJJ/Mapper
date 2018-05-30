package cn.dls.service.lk;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.dls.entity.Comment;

public interface FeedbackService {
	List<Comment> getComments(int userid);

	int remove(int id);

	Comment showone(int id);

	int addComment(int fasong, int shou, String title, String context);
	
	int updatestatic(int id);
}
