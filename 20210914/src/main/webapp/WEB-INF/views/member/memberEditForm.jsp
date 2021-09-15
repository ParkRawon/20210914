<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<script type="text/javascript">
	$(document).ready(function(){  //제이쿼리 함수
		$("#edit").click(function(){  //함수이름 클릭시
			frm.action = "memberEdit.do"; //frm의 action- memberEdit.do를 실행
			frm.submit();   //form값을 전송
		});
		
	});
	</script>
</head>
<div class="container-fluid">
	<h1 class="h3 mb-2 text-gray-800">${name }'s UPDATE</h1>
	 <div class="card mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">${name }님 정보 수정</h6>
			</div>	
			<div class="card-body">	
			<form id="frm" name="frm" action="" method="post">
				<div class="form-group">
					<label>아 이 디</label><input class="form-control" name="id" value="${member.id }" readonly="readonly">
				</div>
				<div class="form-group">
					<label>이 름</label><input type="text" class="form-control" name="name" value="${member.name }">
				</div>
				<div class="form-group">
					<label>주 소</label><input type="text" class="form-control" name="address" value="${member.address }">
				</div>
				<div class="form-group">
					<label>현재상태</label>
					<c:if test="${member.useyn ne 'N' }">
					<input type="text" class="form-control" name="useyn" value="미사용중" readonly="readonly">
					</c:if>
					<c:if test="${member.useyn ne 'Y' }">
					<input type="text" class="form-control" name="useyn" value="사용중" readonly="readonly">
					</c:if>
				</div>
				<input type="hidden" name="useyn" value="${member.useyn }">
				
				<div class ="form-group">
			<button type="button" id="edit" class="btn btn-primary btn-icon-split">
				<span class="icon text-white-50">
                    <i class="fas fa-check"></i>
                 </span>
                 <span class="text">수정</span>
			</button>&nbsp;&nbsp;&nbsp;
			<button type="button" onclick="location.href='home.do'" class="btn btn-secondary btn-icon-split">
				<span class="icon text-white-50">
                	<i class="fas fa-arrow-right"></i>
                </span>
                <span class="text">취소</span>
			</button>
			</div>
			</form>			
			</div>			
		</div>
	</div>
	</div>

    