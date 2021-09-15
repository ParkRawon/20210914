package co.ko.prj.member.service;

import java.util.List;

import co.ko.prj.member.vo.MemberVO;

public interface MemberMapper {
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO member);
	MemberVO memberLogin(MemberVO member);
	int memberInsert(MemberVO member);
	int memberUpdate(MemberVO member);
	int memberDelete(MemberVO member);
}
