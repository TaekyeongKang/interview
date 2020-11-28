<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script>
$(document).ready(function(){
	$('#registBtn').on('click', function(){
		document.location="/member/memberRegist";
	})

	$(document).ready(function() {
		$('#memberList tr').on('click', function() {
			// data-userid
			var userid = $(this).data("userid");

			document.location = "/member/memberDetail?userid=" + userid;
		})
	})

	// 정렬개수 설정
	$('#perPageNum').on('change',function(){
		console.log( $('#perPageNum').val());
		document.location = "${cp}/member/memberList?pageSize="+$('#perPageNum').val();
	})

	// 검색
	$('#searchBtn').on('click',function(){
		console.log($('#searchKeyword').val());
		document.location = "/member/memberSearch?searchType="+$('#searchType').val()+"&searchKeyword="+ $('#searchKeyword').val();	
	})
	
})
</script>
<title>회원 리스트</title>


<div id="if_list_div"
	style="position: relative; padding: 0; overflow: hidden; height: 750px;">
	<div class="content-wrapper" style="min-height: 584px;">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<div class="container-fluid">
				<div class="row md-2">
					<div class="col-sm-6">
						<h1>회원검색</h1>
					</div>
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item">회원리스트</li>
							<li class="breadcrumb-item">목록</li>
						</ol>
					</div>
				</div>
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="card">
				<div class="card-header with-border">
					<button type="button" class="btn btn-primary" id="registBtn">회원등록</button>
					<div id="keyword" class="card-tools" style="width: 550px;">
						<div class="input-group row">
							<!-- sort num -->
							<select class="form-control col-md-3" name="perPageNum"
								id="perPageNum">
								<option value="">정렬개수</option>
								<option value="3">3개씩</option>
								<option value="5">5개씩</option>
								<option value="7">7개씩</option>

							</select>
							<!-- search bar -->
							<select class="form-control col-md-3" name="searchType"
								id="searchType">
								<option value="">검색구분</option>
								<option value="i">아이디</option>
								<option value="n">이름</option>
								<option value="a">별명</option>
							</select> <input class="form-control" type="text" id="searchKeyword" name="keyword"
								placeholder="검색어를 입력하세요." >
								 <span class="input-group-append">
								<button class="btn btn-primary" type="button" id="searchBtn"
									data-card-widget="search" >
									<i class="fa fa-fw fa-search"></i>
								</button>
							</span>
							<!-- end : search bar -->
						</div>
					</div>
				</div>
				<div class="card-body" style="text-align: center;">
					<div class="row">
						<div class="col-sm-12">
							<table class="table table-bordered">
								<tr>
									<th>아이디</th>
									<th>패스워드</th>
									<th>별명</th>
									<th>도로주소</th>
									<th>등록날짜</th>
									<!-- yyyy-MM-dd  -->
								</tr>
								<tbody id="memberList">
									<c:forEach items="${memberList }" var="member">
										<tr data-userid="${member.userid }">
											<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
											<td>${member.userid }</td>
											<td>${member.pass }</td>
											<td>${member.alias }</td>
											<td>${member.addr1 }</td>
											<td><fmt:formatDate value="${member.reg_dt }" /></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- col-sm-12 -->
					</div>
					<!-- row -->
				</div>
				<!-- card-body -->
				<div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        		</div>
<!-- 				<div class="card-footer"> -->
<!-- 					<nav aria-label="member list Navigation"> -->
<!-- 						<ul class="pagination justify-content-center m-0"> -->
<!-- 								 << -->
<!-- 								<li class="page-item"> -->
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${page == 1 }"> --%>
<!-- 											<a class="page-link" href="#"><i class="fas fa-angle-double-left"></i></a> -->
<%-- 										</c:when> --%>
<%-- 										<c:when test="${page > 1 }"> --%>
<%-- 											<a class="page-link" href="${cp }/member/memberList?page=1&pageSize=${pageSize}"><i class="fas fa-angle-double-left"></i></a> --%>
<%-- 										</c:when> --%>
<%-- 									</c:choose> --%>
<!-- 								</li> -->
<!-- 								 < -->
<!-- 								<li class="page-item"> -->
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${page == 1 }"> --%>
<!-- 											<a class="page-link" href="#"><i class="fas fa-angle-left"></i></a> -->
<%-- 										</c:when> --%>
<%-- 										<c:when test="${page > 1 }"> --%>
<%-- 											<a class="page-link" href="${cp }/member/memberList?page=${page-1}&pageSize=${pageSize}"><i class="fas fa-angle-left"></i></a> --%>
<%-- 										</c:when> --%>
<%-- 									</c:choose> --%>
<!-- 								</li> -->
<!-- 								페이지번호 -->
<%-- 									<c:forEach var="i" begin="1" end="${pages }"> --%>
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${page == i }"> --%>
<%-- 											<li class="page-item active"><a class="page-link" href="#">${i }</a></li> --%>
<%-- 										</c:when> --%>
<%-- 										<c:otherwise> --%>
<%-- 											<li class="page-item"><a class="page-link" href="${cp }/member/memberList?page=${i}&pageSize=${pageSize}">${i }</a></li> --%>
<%-- 										</c:otherwise> --%>
<%-- 									</c:choose> --%>
<%-- 									</c:forEach> --%>
									
									
<!-- 							 >		 -->
<!-- 							<li class="page-item"> -->
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${page == pages}"> --%>
<!-- 											<a class="page-link" href="#"><i class="fas fa-angle-right"></i></a> -->
<%-- 										</c:when> --%>
<%-- 										<c:when test="${page < pages }"> --%>
<%-- 											<a class="page-link" href="${cp }/member/memberList?page=${page+1}&pageSize=${pageSize}"><i class="fas fa-angle-right"></i></a> --%>
<%-- 										</c:when> --%>
<%-- 									</c:choose> --%>
<!-- 								</li> -->
								
<!-- 								 >> -->
<!-- 								<li class="page-item"> -->
<%-- 									<c:choose> --%>
<%-- 										<c:when test="${page == pages }"> --%>
<!-- 											<a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a> -->
<%-- 										</c:when> --%>
<%-- 										<c:when test="${page < pages  }"> --%>
<%-- 											<a class="page-link" href="${cp }/member/memberList?page=${pages}&pageSize=${pageSize}"><i --%>
<!-- 									class="fas fa-angle-double-right"></i></a> -->
<%-- 										</c:when> --%>
<%-- 									</c:choose> --%>
<!-- 								</li> -->
<!-- 						</ul> -->
<!-- 					</nav> -->

<!-- 				</div> -->
<!-- 				card-footer -->
<!-- 			</div> -->
			<!-- card  -->
		</section>
	</div>
</div>
</div>








