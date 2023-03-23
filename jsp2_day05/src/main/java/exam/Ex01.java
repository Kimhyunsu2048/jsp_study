package exam;

import org.apache.ibatis.session.SqlSession;

import config.MybatisConnection;
import models.member.Member;

public class Ex01 {

	public static void main(String[] args) {
		
		SqlSession sqlSession = MybatisConnection.getSession();
		Member member = new Member();
		member.setUserId("user06");
		member.setUserNm("사용자06");
		member.setUserPw("123456");
		member.setMobile("01000000000");
		
		int cnt = sqlSession.insert("MemberMapper.insert", member);
		//System.out.println(cnt);
		
		
		Member member2 = new Member();
		member2.setUserId("user07");
		member2.setUserNm("사용자07");
		member2.setUserPw("123456");
		member2.setMobile("01000000000");
		int cnt2 = sqlSession.insert("MemberMapper.insert", member2);
		sqlSession.commit(); // 트랜잭션 
		//System.out.println(cnt2);
	}
}
