package java.org.scdc.service;

import java.org.scdc.vo.MemberVO;

public interface UserService {
	public MemberVO login(MemberVO vo)throws Exception;
}
