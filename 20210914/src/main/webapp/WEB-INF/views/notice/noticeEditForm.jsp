<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container-fluid">
	<!-- Begin Page Content -->
	<div class="container-fluid"></div>
	<!-- /.container-fluid -->
	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">NOTICE EDIT</h1>
	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">게시글 수정하기</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
			<form id="frm" name="frm" action="noticeEdit.do" method="post">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<tbody>
						<tr>
							<th>NO</th>
							<td><input type="text" id="id" name="id"
								value="${notice.id }" readonly="readonly"></td>
							<th>작성자</th>
							<td><input type="text" id="writer" name="writer"
								value="${notice.writer }" readonly="readonly"></td>
							<th>작성일자</th>
							<td><input type="text" id="writeDate" name="writeDate"
								value="${notice.writeDate }"></td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5"><input type="text" id="title" name="title"
								value="${notice.title }"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5"><input type="text" id="contents"
								name="contents" value="${notice.contents }"></td>
						</tr>
					</tbody>
				</table>
				</form><br/>
			</div>
		</div>
	</div>
	<div class="my-2">
		<button type="submit" class="btn btn-primary btn-icon-split"> 
			<span class="icon text-white-50"> 
				<i class="fas fa-flag"></i>
			</span> 
			<span class="text">수정하기</span>
		</button>&nbsp;&nbsp;&nbsp; 
		<button type="submit" class="btn btn-danger btn-icon-split">
			<span class="icon text-white-50"> 
				<i class="fas fa-trash"></i>
			</span> 
			<span class="text">취소</span>
		</button>
	</div>
</div>
