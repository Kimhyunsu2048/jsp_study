package exam;

import org.apache.ibatis.session.SqlSession;

import config.MybatisConnection;
import models.member.Member;

public class Ex03 {

	public static void main(String[] args) {
		SqlSession sqlSession = MybatisConnection.getSession();
		Member params = new Member();
		 params.setUserId("user01");
		 
		Member member = sqlSession.selectOne("MemberMapper.get", params);
		System.out.println("===== 변경 전 =======");
		System.out.println(member);
		
		System.out.println("===== 변경 후 =======");
		//member.setUserNm("(변경)사용자01");
		//sqlSession.update("MemberMapper.update", member);
		params.setUserNo(member.getUserNo());
		int cnt = sqlSession.delete("MemberMapper.delete", params);
		sqlSession.commit();
		System.out.println(cnt);
		
		//member = sqlSession.selectOne("MemberMapper.get", params);
		//System.out.println(member);
	}

}
