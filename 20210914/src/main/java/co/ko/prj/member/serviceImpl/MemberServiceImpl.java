package co.ko.prj.member.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.ko.prj.member.service.MemberMapper;
import co.ko.prj.member.service.MemberService;
import co.ko.prj.member.vo.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper map;
	
	@Override
	public List<MemberVO> memberSelectList() {
		// 회원 목록
		return map.memberSelectList();
	}

	@Override
	public MemberVO memberSelect(MemberVO member) {
		// 로그인
		return map.memberSelect(member);
	}

	@Override
	public int memberInsert(MemberVO member) {
		// 회원가입
		return map.memberInsert(member);
	}

	@Override
	public int memberUpdate(MemberVO member) {
		// 회원 수정
		return map.memberUpdate(member);
	}

	@Override
	public int memberDelete(MemberVO member) {
		// 회원 삭제
		return map.memberDelete(member);
	}

	@Override
	public MemberVO memberLogin(MemberVO member) {
		// 멤버 로그인
		return map.memberLogin(member);
	}

}
