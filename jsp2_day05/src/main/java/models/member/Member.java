package models.member;

import java.time.LocalDateTime;

public class Member {
	private int userNo; // 회원번호
	private String userId; // 회원아이디 
	private String userPw; // 비밀번호
	private String userNm; // 회원명 
	private String mobile; // 휴대전화번호
	private LocalDateTime regDt; // 등록일시 
	private LocalDateTime modDt; // 수정일시
	
	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserPw() {
		return userPw;
	}
	
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	
	public String getUserNm() {
		return userNm;
	}
	
	public void setUserNm(String userNm) {
		this.userNm = userNm;
	}
	
	public String getMobile() {
		return mobile;
	}
	
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	public LocalDateTime getRegDt() {
		return regDt;
	}
	
	public void setRegDt(LocalDateTime regDt) {
		this.regDt = regDt;
	}
	
	public LocalDateTime getModDt() {
		return modDt;
	}
	
	public void setModDt(LocalDateTime modDt) {
		this.modDt = modDt;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userNm=" + userNm
				+ ", mobile=" + mobile + ", regDt=" + regDt + ", modDt=" + modDt + "]";
	}
}
