package org.scdc.service;

import javax.annotation.Resource;

import org.scdc.dao.UserDAO;
import org.scdc.vo.MemberVO;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Service("UserService")
@Repository
public class UserServiceImpl implements UserService{
	@Resource(name="UserDAO")
	private UserDAO userDAO;

	@Override
	public MemberVO login(MemberVO vo)throws Exception{
		return userDAO.login(vo);
	}
}
