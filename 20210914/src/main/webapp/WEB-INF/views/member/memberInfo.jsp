<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#editForm").click(function(){
				frm.action = "memberEditForm.do";
				frm.submit();
			});
			
			$("#delete").click(function(){
				frm.action = "memberDelete.do";
				frm.submit();
			});
		});
	</script>
</head>
<div class="container-fluid">
	<h1 class="h3 mb-2 text-gray-800">${name }'s INFO</h1>
	 <div class="card mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">${name }님 정보</h6>
			</div>
			
			<div class="card-body">	
			<form id="frm" name="frm" action="" method="post">
			<div class="form-group">
				<label>아 이 디</label><input class="form-control" name="id" value="${member.id }" readonly="readonly">
			</div>
			<div class="form-group">
				<label>이 름</label><input class="form-control" name="name" value="${member.name }" readonly="readonly">
			</div>
			<div class="form-group">
				<label>주 소</label><input class="form-control" name="address" value="${member.address }" readonly="readonly">
			</div>
			<div class="form-group">
				<label>권 한</label><input class="form-control" name="auth" value="${member.auth}" readonly="readonly">
			</div>
			
			<button type="submit" id="editForm"  class="btn btn-primary btn-icon-split">
				<span class="icon text-white-50">
                    <i class="fas fa-check"></i>
                 </span>
                 <span class="text">수정</span>
			</button>&nbsp;&nbsp;&nbsp;
			<button type="reset" id="delete" class="btn btn-secondary btn-icon-split">
				<span class="icon text-white-50">
                	<i class="fas fa-arrow-right"></i>
                </span>
                <span class="text">삭제</span>
			</button>
			</form>			
			</div>			
		</div>
	</div>
	</div>


    