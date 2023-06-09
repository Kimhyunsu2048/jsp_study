package exam;

import org.apache.ibatis.session.SqlSession;

import config.MyConnection;
import models.member.Member;

public class Ex02 {

	public static void main(String[] args) {
		SqlSession session = MyConnection.getSession();
		Member params = new Member();
		params.setUserId("user01");
		Member member = session.selectOne("MemberMapper.member", params);
		
		System.out.println("===== 변경 전 =======");
		System.out.println(member);
		
		System.out.println("===== 변경 후 =======");
		member.setUserNm("(변경)회원명01");
		int cnt = session.update("MemberMapper.update", member);
		System.out.println(cnt);
		session.commit();
		
		member = session.selectOne("MemberMapper.member", member);
		System.out.println(member);
	}

}
