package cn.dls.dao.lk;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.dls.entity.Comment;

@Repository
public interface FeedbackMapper {
	List<Comment> getComments(int userid);

	int remove(int id);

	Comment showone(int id);

	int addComment(@Param("fasong") int fasong, @Param("shou") int shou,
			@Param("title") String title, @Param("context") String context);
	
	int updatestatic(int id);
}
