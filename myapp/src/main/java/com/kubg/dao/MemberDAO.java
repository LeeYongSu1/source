package com.kubg.dao;

import com.kubg.vo.MemberVO;

public interface MemberDAO {
	//회원가입
	public void addMember(MemberVO vo);
	
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	
	//회원 정보 수정
	public void memberUpdate(MemberVO vo)throws Exception;
	
	//회원탈퇴
	public void memberDelete(MemberVO vo)throws Exception;
	
	//패스워드 체크
	public int passChk(MemberVO vo)throws Exception;
	
	//아이디 중복 체크
	public int idChk(MemberVO vo)throws Exception;
}
