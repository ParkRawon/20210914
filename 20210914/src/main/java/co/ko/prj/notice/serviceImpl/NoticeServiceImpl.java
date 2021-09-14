package co.ko.prj.notice.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.ko.prj.notice.service.NoticeMapper;
import co.ko.prj.notice.service.NoticeService;
import co.ko.prj.notice.vo.NoticeVO;

@Service("noticeDao")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeMapper map;

	
	@Override
	public List<NoticeVO> noticeSelectList() {
		// 게시판 목록
		return map.noticeSelectList();
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		// 게시판 상세보기
		return map.noticeSelect(vo);
	}

	@Override
	public int noticeInsert(NoticeVO vo) {
		// 게시물 작성
		return map.noticeInsert(vo);
	}

	@Override
	public int noticeUpdate(NoticeVO vo) {
		// 게시물 수정
		return map.noticeUpdate(vo);
	}

	@Override
	public int noticeDelete(NoticeVO vo) {
		// 게시물 삭제
		return map.noticeDelete(vo);
	}

}
