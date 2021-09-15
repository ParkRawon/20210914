<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-fluid">
<div class="container-fluid"></div>
	<h1 class="h3 mb-2 text-gray-800">NOTICE INPUT</h1>
	 <div class="card mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">게시글 등록</h6>
			</div>
			
			<div class="card-body">	
			<form id="frm" name="frm" action="noticeWrite.do" method="post">
			<div class="form-group">
				<label>제 목</label>
					<input class="form-control" name="title">
			</div>
			<div class="form-group">
				<label>내 용</label>
					<textarea class="form-control" rows="3" name="contents">
					</textarea>
			</div>
			<button type="submit"  class="btn btn-primary btn-icon-split">
				<span class="icon text-white-50">
                    <i class="fas fa-check"></i>
                 </span>
                 <span class="text">저장하기</span>
			</button>&nbsp;&nbsp;&nbsp;
			<button type="reset" class="btn btn-secondary btn-icon-split">
				<span class="icon text-white-50">
                	<i class="fas fa-arrow-right"></i>
                </span>
                <span class="text">취소하기</span>
			</button>
			</form>			
			</div>			
		</div>
	</div>
</div>

