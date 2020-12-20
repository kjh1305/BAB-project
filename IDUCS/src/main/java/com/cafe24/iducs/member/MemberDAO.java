package com.cafe24.iducs.member;

public interface MemberDAO {
	 public void insertMember(MemberDTO dto);
	 public int countMember(MemberDTO dto);
	 public MemberDTO selectMember(MemberDTO dto);
	 public int checkMember(MemberDTO dto);
}
