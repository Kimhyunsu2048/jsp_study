package exam;

import org.apache.ibatis.session.SqlSession;

import config.MybatisConnection;
import models.member.Member;

public class Ex05 {

	public static void main(String[] args) {
		SqlSession sqlSession = MybatisConnection.getSession();
		Member member = new Member();
		member.setUserId("user02");
		member.setUserPw("2345");
		member.setUserNm("(변경)사용자02");
		//member.setMobile("0000000");
		
		int cnt = sqlSession.update("MemberMapper.update", member);
		sqlSession.commit();
		System.out.println(cnt);
	}

}
