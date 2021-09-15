package co.ko.prj.member.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.ko.prj.member.service.MemberService;
import co.ko.prj.member.vo.MemberVO;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberDao;
	
	@RequestMapping("/loginCheck.do")
	private String loginCheck(MemberVO member, Model model, HttpSession session) {
		//membervo가 가지고 있는 아이디와 패스워드를 들고온다
		member = memberDao.memberLogin(member);
		String view = null;
		
		if(member != null) {
			session.setAttribute("id", member.getId());
			session.setAttribute("name", member.getName());
			session.setAttribute("auth", member.getAuth());
			view = "redirect:home.do"; 
		}else {
			model.addAttribute("message", "Id or Password not...");
			view = "pages/error";
		}
		return view;
	}
	
	@RequestMapping("/logout.do")
	private String logout(HttpSession session) {
		session.invalidate();       //session을 통째로 날린다
		
		return "redirect:home.do";
	}
	
	@RequestMapping("/memberInfo.do")       //회원정보보기
	private String memberInfo(MemberVO member, Model model, HttpSession session) {
		
		member.setId((String) session.getAttribute("id"));
		model.addAttribute("member", memberDao.memberSelect(member));
		
		return "member/memberInfo";
	}
	
	@PostMapping("/memberDelete.do")  //회원삭제
	String memberDelete(MemberVO member, Model model, HttpSession session) {
		String view = null;
		member.setId((String) session.getAttribute("id"));
		int n = memberDao.memberDelete(member);
		
		if(n != 0){
			session.invalidate();   //session을 통째로 삭제한다
			view = "redirect:home.do"; 
		}else {
			model.addAttribute("message", "삭제실패");
			view ="pages/error";
		}
		return view;
	}
	
	@RequestMapping("/memberEditForm.do")   //회원 수정폼
	String memberEditForm(MemberVO member, Model model, HttpSession session) {
		
		member.setId((String) session.getAttribute("id"));
		model.addAttribute("member", memberDao.memberSelect(member));

		return "member/memberEditForm";
	}
	
	@PostMapping("/memberEdit.do")  //회원수정
	String memberEdit(MemberVO member, Model model, HttpSession session) {
		String view = null;
		member.setId((String) session.getAttribute("id"));
		int n = memberDao.memberUpdate(member);
		
		if(n != 0){
//			session.invalidate();   //session을 통째로 삭제한다
			view = "redirect:home.do"; 
		}else {
			model.addAttribute("message", "수정실패");
			view ="pages/error";
		}
		return view;
	}
	
	
}
