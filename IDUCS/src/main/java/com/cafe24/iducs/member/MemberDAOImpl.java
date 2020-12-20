package com.cafe24.iducs.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sql;

	private static final String NAMESPACE = "com.cafe24.iducs.mappers.memberMapper";

	@Override
	public void insertMember(MemberDTO dto) {
		sql.insert(NAMESPACE + ".insertMember", dto);
	}

	@Override
	public int countMember(MemberDTO dto) {
		int count=sql.selectOne(NAMESPACE + ".countMember", dto);
		
		return count;
	}
	
	@Override
	public MemberDTO selectMember(MemberDTO dto) {
		MemberDTO user = sql.selectOne(NAMESPACE + ".selectMember", dto);
		 
		 return user;
	 }
	
	@Override
	public int checkMember(MemberDTO dto) {
		int count = sql.selectOne(NAMESPACE + ".checkMember", dto);
		
		return count;
	}

}
