package java.org.scdc.service;

import javax.annotation.Resource;

import java.org.scdc.dao.UserDAO;
import java.org.scdc.vo.MemberVO;
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
