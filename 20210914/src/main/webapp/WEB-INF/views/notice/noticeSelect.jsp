<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <head>
 	<script type="text/javascript">
 		function CallNotice(str) {
 			if(str == "U") {
 				frm.action = "noticeEditForm.do";
 			}else {
 				frm.action = "noticeDelete.do";
 			}
 			
 			frm.submit();		
 		}
 	</script>
 </head>  
  <div class="container-fluid">
	<!-- Begin Page Content -->
        <div class="container-fluid"></div>
             <!-- /.container-fluid -->
             <!-- Page Heading -->
				<h1 class="h3 mb-2 text-gray-800">NOTICE DETAIL</h1>
			 <!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">상세보기</h6>
				</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%"
					cellspacing="0">
					<tbody>						
						<tr>
							<th>작성자</th>
							<td>${notice.name }</td>
							<th>작성일자</th>
							<td>${notice.writeDate }</td>
							<th>조회수</th>
							<td>${notice.hit }</td>						
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="5">${notice.title }</td>									
						</tr>
						<tr>
							<th>내용</th>
							<td colspan="5" >
								<textarea rows="6" cols="100">${notice.contents }</textarea></td>									
						</tr>
					</tbody>
				</table><br/>
				<div>
					<button type="button" onclick="CallNotice('U')" class="btn btn-primary btn-icon-split">
                        <span class="icon text-white-50">
                             <i class="fas fa-flag"></i>
                        </span>
                        <span class="text">수정하기</span>
                    </button>>&nbsp;&nbsp;&nbsp;
                    <a href="#" class="btn btn-danger btn-icon-split">
                       <span class="icon text-white-50">
                          <i class="fas fa-trash"></i>
                       </span>
                       <span class="text">삭제하기</span>
                    </a>
				</div>
			</div>
		</div>
	</div>
	</div>
