package org.ssm.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.ssm.entity.User;
@Repository
public interface UserMapper {
		List<User> findall();
}
