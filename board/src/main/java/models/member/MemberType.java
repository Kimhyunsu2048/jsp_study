package models.member;

public enum MemberType {
	MEMBER, //일반회원
	ADMIN; // 관리자
	
	public String getUserType() {
		return super.toString();
	}

}
