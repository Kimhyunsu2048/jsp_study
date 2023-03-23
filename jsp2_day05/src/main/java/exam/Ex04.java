package exam;

import org.apache.ibatis.session.SqlSession;

import config.MybatisConnection;
import models.member.Member;

public class Ex04 {

	public static void main(String[] args) {
		SqlSession sqlSession  = MybatisConnection.getSession();
		Member member = new Member();
		member.setUserId("user08");
		member.setUserPw("123456");
		member.setUserNm("사용자08");
		member.setMobile("01000000000");
		int cnt = sqlSession.insert("MemberMapper.insert", member);
		sqlSession.commit();
		System.out.printf("userNo=%d%n", member.getUserNo());
	}

}
