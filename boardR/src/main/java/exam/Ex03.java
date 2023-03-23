package exam;

import org.apache.ibatis.session.SqlSession;

import config.MyConnection;
import models.member.Member;

public class Ex03 {

	public static void main(String[] args) {
		SqlSession session = MyConnection.getSession();
		Member params = new Member();
		params.setUserId("user01");
		
		int cnt = session.delete("MemberMapper.delete", params);
		System.out.println(cnt);
		session.commit();
	}

}
