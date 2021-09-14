<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<script type="text/javascript">
		function CallNotice(str) {
			frm.id.value = str;
			frm.submit();		
		}
	</script>
</head>
<div class="container-fluid">

	<!-- Page Heading -->
	<h1 class="h3 mb-2 text-gray-800">NOTICE</h1>

	<!-- DataTales Example -->
	<div class="card shadow mb-4">
		<div class="card-header py-3">
			<h6 class="m-0 font-weight-bold text-primary">NoticeTables</h6>
		</div>
		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
					<thead>
						<tr>
							<th>NO</th>
							<th>작성자</th>
							<th>제목</th>
							<th>작성일짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${notices }">
						<tr onclick="CallNotice('${notice.id }')">
							<td>${notice.id }</td>
							<td>${notice.name }</td>
							<td>${notice.title }</td>
							<td>${notice.writeDate }</td>
							<td>${notice.hit }</td>							
						</tr>
						</c:forEach>
					</tbody>
				</table><br/>
				<div>
					<form  id="frm" name="frm" action="noticeSelect.do" method="post">
						<input type="hidden" id="id" name="id">
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- /.container-fluid -->




