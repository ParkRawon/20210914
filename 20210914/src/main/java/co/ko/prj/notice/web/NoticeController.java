package co.ko.prj.notice.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.ko.prj.notice.service.NoticeService;
import co.ko.prj.notice.vo.NoticeVO;

@Controller
public class NoticeController {
	
	@Autowired
	private NoticeService noticeDao;
	
	@RequestMapping("/tables.do")  //게시물 목록 보기
	String talbes(Model model) {
		model.addAttribute("notices", noticeDao.noticeSelectList());
		
		return "notice/tables";
	}
	
	@RequestMapping("/noticeSelect.do")
	String noticeSelece(Model model, NoticeVO vo) {
//		vo.setId(26);   //강제로 값을 입력해놓음
		
		model.addAttribute("notice", noticeDao.noticeSelect(vo));
		
		return "notice/noticeSelect";
	}
	
	@RequestMapping("/noticeEditForm.do")
	String noticeEditForm() {
		return "notice/noticeEditForm";
	}
	
	@RequestMapping("/noticeEdit.do")
	String noticeEdit(Model model, NoticeVO vo) {
		model.addAttribute("notice", noticeDao.noticeUpdate(vo));
		
		return "notice/noticeSelect";
	}
}
