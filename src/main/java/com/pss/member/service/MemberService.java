package com.pss.member.service;

import java.sql.Connection;
import static com.pss.common.JDBCTemplate.*;

import com.pss.member.model.dao.MemberDao;
import com.pss.member.model.vo.Member;

public class MemberService {
	public int insertMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertMember(conn, m);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
}
