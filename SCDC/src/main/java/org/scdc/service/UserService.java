package org.scdc.service;

import org.scdc.vo.MemberVO;

public interface UserService {
	public MemberVO login(MemberVO vo)throws Exception;
}
