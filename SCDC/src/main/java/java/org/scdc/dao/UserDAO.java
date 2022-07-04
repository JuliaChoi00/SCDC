package java.org.scdc.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import java.org.scdc.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("UserDAO")
public class UserDAO {
	@Autowired	
	@Resource(name = "sqlSessionTemplate")
    private SqlSession sqlSessionFactory;
	
	public MemberVO login(MemberVO vo) throws Exception{
		return sqlSessionFactory.selectOne("com.sample.mysql.selectLoginInfo", vo);
	}
}
