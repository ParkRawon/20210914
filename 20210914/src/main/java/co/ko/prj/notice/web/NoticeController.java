package co.ko.prj.notice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import co.ko.prj.notice.service.NoticeService;
import co.ko.prj.notice.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeDao;
	
	@RequestMapping("/home.do")
	public String home(NoticeVO vo, Model model) {
		
		model.addAttribute("notices",noticeDao.noticeSelectList());
		
		return "home/main";
	}	
	
	@RequestMapping("/tables.do")  //게시물 목록 보기
	String talbes(Model model) {
		model.addAttribute("notices", noticeDao.noticeSelectList());
		
		return "notice/tables";
	}
	
	@RequestMapping("/noticeSelect.do")   //게시물 하나 보기
	String noticeSelecte(Model model, NoticeVO vo) {  
//		vo.setId(26);   //강제로 값을 입력해놓음
		
		model.addAttribute("notice", noticeDao.noticeSelect(vo));
		
		return "notice/noticeSelect";
	}
	
	@RequestMapping("/noticeEditForm.do")  //게시글 수정 폼
	String noticeEditForm() {
		
		return "notice/noticeEditForm";
	}
	
	@RequestMapping("/noticeEdit.do")   //게시글 수정하기
	String noticeEdit(Model model, NoticeVO vo) {
		model.addAttribute("notice", noticeDao.noticeUpdate(vo));
		
		return "notice/noticeSelect";
	}
	
	@RequestMapping("/noticeForm.do")   //게시글쓰기 폼
	String noticeForm() {
		
		return "notice/noticeForm";
	}
	
	@PostMapping("/noticeWrite.do")  //게시글 쓰기
	String noticeWrite(NoticeVO vo, Model model) {
		noticeDao.noticeInsert(vo);
		
		return "redirect:tables.do";
	}
	
	
}
