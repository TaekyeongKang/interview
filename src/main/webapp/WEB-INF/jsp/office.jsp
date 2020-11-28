<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body id="main" data-role="main" class="adm_skin" style="">
	<div class="tWrap go_skin_default ">
		<div class="wrap_gnb admin_side_new">
			<div>
				<div class="head_sidebar">
					<!-- gnb -->
					<h1 class="logo">
						<div class="site">Site Admin</div>
						<div class="company">다우그룹</div>
					</h1>
					<a class="btn_fold" title="접기"> <span class="ic_adm ic_fold"></span>
					</a> <a class="btn_fold" title="펼치기" style="display: none;"> <span
						class="ic_adm ic_unfold"></span>
					</a>
					<form onsubmit="return false;" class="search dark">
						<fieldset>
							<legend>메뉴 검색</legend>
							<input id="filteringText" type="text" autocomplete="off">
							<span class="ic_adm ic_search" title="검색"></span> 
							<a class="btn_cancel_s_w"> 
								<span class="ic_adm ic_cancel_s_w" title="삭제"></span>
							</a>
						</fieldset>
					</form>
				</div>
				<div class="gnb simplebar-content-wrapper" id="sidebar_wrapper" style="height: 828.55px;" data-simplebar="init">
					<div class="simplebar-wrapper" style="margin: 0px -16px;">
						<div class="simplebar-height-auto-observer-wrapper">
							<div class="simplebar-height-auto-observer"></div>
						</div>
						<div class="simplebar-mask">
							<div class="simplebar-offset" style="right: 0px; bottom: 0px;">
								<div class="simplebar-content-wrapper" style="height: 100%; overflow: hidden;">
									<div class="simplebar-content" style="padding: 0px 16px;">
										<div id="null_data" class="null_data" style="display: none;">
											<span class="txt">검색 결과가 없습니다.</span>
										</div>

										<div id="menu-content" class="simplebar-content">
											<div class="gnb_group">
												<div class="gnb_header">My</div>
												<div class="gnb_memu" id="recentlyMenu">
													<a class="gnb_tit folded"> 
														<span class="ic_adm ic_accordion"></span> 
														<span class="txt">최근 사용한 메뉴</span>
													</a>

													<ul class="gnb_sub" style="display: none;">
														<li name="D-c-2" id="recently_D-c-2">
															<a class="tit">
																<span class="txt">전체 게시판 통계</span>
															</a>
														</li>
														<li name="A-a" id="recently_A-a">
															<a class="tit">
																<span class="txt">서비스 정보</span>
															</a>
														</li>
														<li name="D-o-0" id="recently_D-o-0">
															<a class="tit">
																<span class="txt">자료실 기본설정</span>
															</a>
														</li>
														<li name="D-b-0" id="recently_D-b-0">
															<a class="tit">
																<span class="txt">결재 양식</span>
															</a>
														</li>
														<li name="C-b" id="recently_C-b">
															<a class="tit">
																<span class="txt">멤버통합관리</span>
															</a>
														</li>
													</ul>
												</div>
												<div id="favoritedMenu" class="gnb_memu">
													<a class="gnb_tit folded"> 
														<span class="ic_adm ic_accordion"></span> 
														<span class="txt">즐겨찾기</span>
													</a>

													<ul class="gnb_sub" style="display: none;"></ul>
												</div>
											</div>
											<div id="sidebar" class="gnb_group">
												<div class="gnb_header">Management</div>
												<div id="management_menu" style="padding: 0px;">
													<div class="gnb_memu" name="A" id="root_A">
														<a class="gnb_tit folded">
															<span class="ic_adm ic_accordion"></span>
															<span class="txt">기본 관리</span>
														</a>
														<ul class="gnb_sub" style="display: none;">
															<li name="A-a" id="root_A-a">
																<a class="tit folded">
																	<span class="txt">서비스 정보</span>
																</a>
															</li>
															<li name="A-b" id="root_A-b"><a class="tit folded"><span
																	class="txt">서비스 메뉴관리</span></a></li>
															<li name="A-c" id="root_A-c"><a class="tit folded"><span
																	class="txt">공용용량 현황</span></a></li>
															<li name="A-d" id="root_A-d"><a class="tit folded"><span
																	class="txt">메뉴 운영 권한 관리</span></a></li>
															<li name="A-e" id="root_A-e"><a class="tit folded"><span
																	class="txt">프로필 카드 관리</span></a></li>
															<li name="A-f" id="root_A-f"><a class="tit folded"><span
																	class="txt">팝업 공지</span></a></li>
															<li name="A-g" id="root_A-g"><a class="tit folded"><span
																	class="txt">로고 및 테마</span></a></li>
															<li name="A-h" id="root_A-h"><a class="tit folded"><span
																	class="txt">데이터 백업</span></a></li>
														</ul>
													</div>
													<div class="gnb_memu" name="B" id="root_B">
														<a class="gnb_tit folded"><span
															class="ic_adm ic_accordion"></span><span class="txt">보안
																관리</span></a>
														<ul class="gnb_sub" style="display: none;">
															<li name="B-a" id="root_B-a"><a class="tit folded"><span
																	class="txt">로그인</span></a></li>
															<li name="B-b" id="root_B-b"><a class="tit folded"><span
																	class="txt">비밀번호</span></a></li>
															<li name="B-c" id="root_B-c"><a class="tit folded"><span
																	class="txt">OTP 로그인</span></a></li>
															<li name="B-d" id="root_B-d"><a class="tit folded"><span
																	class="txt">기능 접근 제한</span></a></li>
															<li name="B-e" id="root_B-e"><a class="tit folded"><span
																	class="txt">모바일 접근 제한</span></a></li>
															<li name="B-f" id="root_B-f"><a class="tit folded"><span
																	class="txt">모바일 접속차단 (MAM)</span></a></li>
															<li name="B-g" id="root_B-g"><a class="tit folded"><span
																	class="txt">멤버 접근 로그</span></a></li>
															<li name="B-h" id="root_B-h"><a class="tit folded"><span
																	class="txt">관리자 권한 설정</span></a></li>
															<li name="B-i" id="root_B-i"><a class="tit folded"><span
																	class="txt">관리자 업무기록</span></a></li>
														</ul>
													</div>
													<div class="gnb_memu" name="C" id="root_C">
														<a class="gnb_tit folded"><span
															class="ic_adm ic_accordion"></span><span class="txt">조직
																관리</span></a>
														<ul class="gnb_sub" style="display: none;">
															<li name="C-a" id="root_C-a"><a class="tit folded"><span
																	class="txt">조직설계</span></a></li>
															<li name="C-b" id="root_C-b"><a class="tit folded"><span
																	class="txt">멤버통합관리</span></a></li>
															<li name="C-c" id="root_C-c"><a class="tit folded"><span
																	class="txt">직위체계</span></a></li>
															<li name="C-d" id="root_C-d"><a class="tit folded"><span
																	class="txt">조직 일괄등록</span></a></li>
															<li name="C-e" id="root_C-e"><a class="tit folded"><span
																	class="txt">조직 삭제목록</span></a></li>
														</ul>
													</div>
													<div class="gnb_memu gnb_menu_manage" name="D" id="root_D">
														<a class="gnb_tit"><span class="ic_adm ic_accordion"></span><span
															class="txt">메뉴 관리</span></a>
														<ul class="gnb_sub" style="display: block;">
															<li name="D-a" id="root_D-a"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">홈</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-a-0" id="root_D-a-0"><a
																		class="tit folded"><span class="txt">대시보드</span></a></li>
																</ul></li>
															<li name="D-b" id="root_D-b"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">전자결재</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-b-0" id="root_D-b-0"><a
																		class="tit folded"><span class="txt">결재 양식</span></a></li>
																	<li name="D-b-1" id="root_D-b-1"><a
																		class="tit folded"><span class="txt">전자결재
																				기본설정</span></a></li>
																	<li name="D-b-2" id="root_D-b-2"><a
																		class="tit folded"><span class="txt">문서함 필드</span></a></li>
																	<li name="D-b-3" id="root_D-b-3"><a
																		class="tit folded"><span class="txt">자동 결재선</span></a></li>
																	<li name="D-b-4" id="root_D-b-4"><a
																		class="tit folded"><span class="txt">전사 문서함</span></a></li>
																	<li name="D-b-5" id="root_D-b-5"><a
																		class="tit folded"><span class="txt">부서 문서함</span></a></li>
																	<li name="D-b-6" id="root_D-b-6"><a
																		class="tit folded"><span class="txt">공문 발송
																				관리</span></a></li>
																	<li name="D-b-7" id="root_D-b-7"><a
																		class="tit folded"><span class="txt">결재 관리자
																				설정</span></a></li>
																	<li name="D-b-8" id="root_D-b-8"><a
																		class="tit folded"><span class="txt">서명
																				일괄등록</span></a></li>
																	<li name="D-b-9" id="root_D-b-9"><a
																		class="tit folded"><span class="txt">전자결재
																				문서번호</span></a></li>
																	<li name="D-b-10" id="root_D-b-10"><a
																		class="tit folded"><span class="txt">결재문서
																				관리</span></a></li>
																	<li name="D-b-11" id="root_D-b-11"><a
																		class="tit folded"><span class="txt">보안등급
																				관리</span></a></li>
																	<li name="D-b-12" id="root_D-b-12"><a
																		class="tit folded"><span class="txt">전자결재
																				일자별 통계</span></a></li>
																	<li name="D-b-13" id="root_D-b-13"><a
																		class="tit folded"><span class="txt">전자결재
																				부서별 통계</span></a></li>
																</ul></li>
															<li name="D-c" id="root_D-c"><a class="tit"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">게시판</span></a>
															<ul class="gnb_sub" style="display: block;">
																	<li name="D-c-0" id="root_D-c-0"><a
																		class="tit folded"><span class="txt">게시판
																				기본설정</span></a></li>
																	<li name="D-c-1" id="root_D-c-1"><a
																		class="tit folded"><span class="txt">전사 게시판</span></a></li>
																	<li name="D-c-2" id="root_D-c-2"><a
																		class="tit folded on"><span class="txt">전체
																				게시판 통계</span></a></li>
																	<li name="D-c-3" id="root_D-c-3"><a
																		class="tit folded"><span class="txt">부서별
																				게시판 통계</span></a></li>
																</ul></li>
															<li name="D-d" id="root_D-d"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">문서
																		관리</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-d-0" id="root_D-d-0"><a
																		class="tit folded"><span class="txt">문서함 관리</span></a></li>
																</ul></li>
															<li name="D-e" id="root_D-e"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">메일</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-e-0" id="root_D-e-0"><a
																		class="tit folded"><span class="txt">메일
																				기본설정</span></a></li>
																	<li name="D-e-1" id="root_D-e-1"><a
																		class="tit folded"><span class="txt">메일 그룹</span></a></li>
																	<li name="D-e-2" id="root_D-e-2"><a
																		class="tit folded"><span class="txt">메일 배너</span></a></li>
																	<li name="D-e-3" id="root_D-e-3"><a
																		class="tit folded"><span class="txt">별칭 계정</span></a></li>
																	<li name="D-e-4" id="root_D-e-4"><a
																		class="tit folded"><span class="txt">휴면 계정</span></a></li>
																	<li name="D-e-5" id="root_D-e-5"><a
																		class="tit folded"><span class="txt">대량메일
																				발송자</span></a></li>
																	<li name="D-e-6" id="root_D-e-6"><a
																		class="tit folded"><span class="txt">도메인
																				메일함</span></a></li>
																	<li name="D-e-7" id="root_D-e-7"><a
																		class="tit folded"><span class="txt">편지지</span></a></li>
																	<li name="D-e-8" id="root_D-e-8"><a
																		class="tit folded"><span class="txt">문서템플릿</span></a></li>
																	<li name="D-e-9" id="root_D-e-9"><a
																		class="tit folded"><span class="txt">메일 통계</span></a></li>
																</ul></li>
															<li name="D-f" id="root_D-f"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">보고</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-f-0" id="root_D-f-0"><a
																		class="tit folded"><span class="txt">공용 양식</span></a></li>
																</ul></li>
															<li name="D-g" id="root_D-g"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">Works</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-g-0" id="root_D-g-0"><a
																		class="tit folded"><span class="txt">Works
																				기본설정</span></a></li>
																	<li name="D-g-1" id="root_D-g-1"><a
																		class="tit folded"><span class="txt">전체 앱
																				현황</span></a></li>
																</ul></li>
															<li name="D-h" id="root_D-h"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">캘린더</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-h-0" id="root_D-h-0"><a
																		class="tit folded"><span class="txt">전사 캘린더</span></a></li>
																	<li name="D-h-1" id="root_D-h-1"><a
																		class="tit folded"><span class="txt">전사 기념일
																				/ 공휴일</span></a></li>
																</ul></li>
															<li name="D-i" id="root_D-i"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">예약</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-i-0" id="root_D-i-0"><a
																		class="tit folded"><span class="txt">자산 목록</span></a></li>
																</ul></li>
															<li name="D-j" id="root_D-j"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">근태관리</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-j-0" id="root_D-j-0"><a
																		class="tit folded"><span class="txt">근태관리
																				기본설정</span></a></li>
																	<li name="D-j-1" id="root_D-j-1"><a
																		class="tit folded"><span class="txt">근무시간</span></a></li>
																	<li name="D-j-2" id="root_D-j-2"><a
																		class="tit folded"><span class="txt">근태 유형</span></a></li>
																	<li name="D-j-3" id="root_D-j-3"><a
																		class="tit folded"><span class="txt">근무지 설정</span></a></li>
																	<li name="D-j-4" id="root_D-j-4"><a
																		class="tit folded"><span class="txt">연차 유형</span></a></li>
																	<li name="D-j-5" id="root_D-j-5"><a
																		class="tit folded"><span class="txt">연차 현황</span></a></li>
																</ul></li>
															<li name="D-k" id="root_D-k"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">설문</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-k-0" id="root_D-k-0"><a
																		class="tit folded"><span class="txt">설문
																				기본설정</span></a></li>
																	<li name="D-k-1" id="root_D-k-1"><a
																		class="tit folded"><span class="txt">전체 설문</span></a></li>
																</ul></li>
															<li name="D-l" id="root_D-l"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">주소록</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-l-0" id="root_D-l-0"><a
																		class="tit folded"><span class="txt">주소록 기본
																				설정</span></a></li>
																	<li name="D-l-1" id="root_D-l-1"><a
																		class="tit folded"><span class="txt">공용 주소록</span></a></li>
																	<li name="D-l-2" id="root_D-l-2"><a
																		class="tit folded"><span class="txt">전체 주소록
																				통계</span></a></li>
																</ul></li>
															<li name="D-m" id="root_D-m"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">커뮤니티</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-m-0" id="root_D-m-0"><a
																		class="tit folded"><span class="txt">커뮤니티
																				기본설정</span></a></li>
																	<li name="D-m-1" id="root_D-m-1"><a
																		class="tit folded"><span class="txt">개설신청
																				커뮤니티</span></a></li>
																	<li name="D-m-2" id="root_D-m-2"><a
																		class="tit folded"><span class="txt">전체
																				커뮤니티</span></a></li>
																	<li name="D-m-3" id="root_D-m-3"><a
																		class="tit folded"><span class="txt">커뮤니티
																				전체게시판 통계</span></a></li>
																	<li name="D-m-4" id="root_D-m-4"><a
																		class="tit folded"><span class="txt">커뮤니티별
																				게시판 통계</span></a></li>
																</ul></li>
															<li name="D-n" id="root_D-n"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">PC메신저/모바일</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-n-0" id="root_D-n-0"><a
																		class="tit folded"><span class="txt">PC메신저/모바일
																				첨부파일</span></a></li>
																	<li name="D-n-1" id="root_D-n-1"><a
																		class="tit folded"><span class="txt">PC메신저/모바일
																				데이터 관리</span></a></li>
																</ul></li>
															<li name="D-o" id="root_D-o"><a class="tit folded"><span
																	class="ic_adm ic_accordion_s"></span><span class="txt">자료실</span></a>
															<ul class="gnb_sub" style="display: none;">
																	<li name="D-o-0" id="root_D-o-0"><a
																		class="tit folded"><span class="txt">자료실
																				기본설정</span></a></li>
																</ul></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="simplebar-placeholder"
							style="width: auto; height: 757px;"></div>
					</div>
					<div class="simplebar-track simplebar-horizontal"
						style="visibility: hidden;">
						<div class="simplebar-scrollbar"
							style="transform: translate3d(0px, 0px, 0px); display: none;"></div>
					</div>
					<div class="simplebar-track simplebar-vertical"
						style="visibility: hidden;">
						<div class="simplebar-scrollbar"
							style="height: 647px; transform: translate3d(0px, 0px, 0px); display: none;"></div>
					</div>
				</div>
				<!-- //gnb -->
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		<div class="admin_content">
			<div class="wrap_snb" id="top_menu">
				<div>
					<ul class="snb">
						<li><span id="tutorial_guide_text" style="display: none"
							class="tool_tip">튜토리얼은 여기에서 다시 보실 수 있습니다.<i
								class="tail_right"></i>
						</span> <a id="top_menu_help" class="btn_ic" title="도움말"> <span
								class="ic_adm ic_help3"></span>
						</a></li>
						<li><a class="btn_ic btn_ic_menu sitemap" title="전체메뉴"> <span
								class="ic_adm ic_menu"></span>
						</a></li>
						<li><a class="photo" id="top_menu_profile" title="김상후 님">
								<img src="/go/thumb/user/small/4301-212117" alt="">
						</a></li>
					</ul>

					<div style="display: none; right: 0" id="top_menu_help_sub_menu"
						class="layer_mini layer_snb_option">
						<ul class="list_item">
							<li><a class="list_item btn_ic_help3"> 도움말 보기 </a></li>
							<li><a class="list_item popup_admin_gide"> 튜토리얼 보기 </a></li>
						</ul>
					</div>

					<div style="display: none; right: 0" id="top_menu_profile_sub_menu"
						class="layer_mini layer_snb_option">
						<ul class="list_item">
							<li><a href="/go/logout"> <span class="txt">로그아웃</span>
							</a></li>
						</ul>
					</div>

				</div>
			</div>
			<header class="content_top" id="layoutTitle">
			<div uid="D-c-2" labelkey="전체 게시판 통계" href="board/statistics/all"
				contentspath="admin/views/board_statistics"
				routingname="renderBoardStatistics" level="site,service"
				order="28650" childs="">
				<div class="content_nav">
					<a class="path" data-link="" style="cursor: default">메뉴 관리</a><span
						class="separator">/</span><a class="path" data-link=""
						style="cursor: default">게시판</a>
				</div>
				<h1>
					<span class="title">전체 게시판 통계</span>
				</h1>
				<span class="btn_wrap" id="favorite"> <a
					class="btn_ic_s btn_favor"> <span class="ic_adm ic_favor_off"></span>
				</a>
				</span>
			</div>
			</header>
			<div class="content_page" id="layoutContent">
				<div>
					<div class="content_info" id="content_top">
						<ul class="info_summary">
							<li class="first"><span class="tit">총 게시판 수</span> <span
								class="txt"><strong>24</strong> 개</span> <span class="desc">정상
									: 23 / 중지 : 1</span></li>
							<li style="display: none;"><span class="tit">총 게시물 수</span>
								<span class="txt"><strong>285</strong> 개</span> <span
								class="desc">클래식 : 188 / 피드 : 97</span></li>
							<li style="display: none;"><span class="tit">총 사용량</span> <span
								class="txt"><strong>140.5</strong> MB</span> <span class="desc">정상
									: 140.5MB / 중지 : 0.0MB</span></li>
						</ul>
						<span class="wrap_action"> <span
							class="ic_adm ic_accordion_open" title="펼치기"></span>
						</span> <span class="wrap_action" style="display: none;"> <span
							class="ic_adm ic_accordion_close" title="접기"></span>
						</span>
					</div>

					<div class="content_page">

						<div class="dataTables_wrapper container">

							<div class="content_tb">
								<div id="bbsDataTable_wrapper" class="dataTables_wrapper"
									role="grid">
									<div class="toolbar_top header_tb">
										<div class="critical custom_header">
											<div id="csvDownLoad" style="">
												<span class="btn_tool" id="csvDownLoadBtn">목록 다운로드</span>
											</div>
										</div>
										<div id="bbsDataTable_length" class="dataTables_length">
											<label> <select size="1" name="bbsDataTable_length"
												aria-controls="bbsDataTable"><option value="20"
														selected="selected">20</option>
													<option value="40">40</option>
													<option value="60">60</option>
													<option value="80">80</option></select>
											</label>
										</div>
									</div>
									<div id="bbsDataTable_processing" class="dataTables_processing"
										style="visibility: hidden;">Loading...</div>
									<table class="chart size dataTable" id="bbsDataTable"
										style="width: 100%; margin-bottom: 0px;">
										<colgroup>
											<col width="*">
											<col width="*">
											<col width="120">
											<col width="120">
											<col width="120">
											<col width="120">
											<col width="120">
										</colgroup>
										<thead>
											<tr role="row">
												<th class="title sorting" role="columnheader" tabindex="0"
													aria-controls="bbsDataTable" rowspan="1" colspan="1"
													aria-label="제목: activate to sort column ascending"
													style="width: 94px;"><span class="title_sort">제목<ins
															class="ic"></ins><span class="selected"></span></span></th>
												<th class="title sorting" role="columnheader" tabindex="0"
													aria-controls="bbsDataTable" rowspan="1" colspan="1"
													aria-label="소유부서: activate to sort column ascending"
													style="width: 138px;"><span class="title_sort">소유부서<ins
															class="ic"></ins></span></th>
												<th class="sorting_disable sorting_disabled"
													role="columnheader" rowspan="1" colspan="1"
													aria-label="
							
								전체유형
								클래식 타입
								피드 타입
							
						"
													style="width: 93px;"><select id="boardType">
														<option value="all">전체유형</option>
														<option value="CLASSIC">클래식 타입</option>
														<option value="STREAM">피드 타입</option>
												</select></th>
												<th class="sorting_disable sorting_disabled"
													role="columnheader" rowspan="1" colspan="1"
													aria-label="
							
								상태
								정상
								중지
							
						"
													style="width: 88px;"><select id="boardStatus">
														<option value="">상태</option>
														<option value="ACTIVE">정상</option>
														<option value="CLOSED">중지</option>
												</select></th>
												<th class="align_r sorting" role="columnheader" tabindex="0"
													aria-controls="bbsDataTable" rowspan="1" colspan="1"
													aria-label="게시물 개수: activate to sort column ascending"
													style="width: 108px;"><span class="title_sort">게시물
														개수<ins class="ic"></ins>
												</span></th>
												<th class="align_r sorting_desc" role="columnheader"
													tabindex="0" aria-controls="bbsDataTable" rowspan="1"
													colspan="1"
													aria-label="사용량(MB): activate to sort column ascending"
													style="width: 108px;"><span class="title_sort">사용량(MB)<ins
															class="ic"></ins></span></th>
												<th class="date last align_c sorting" role="columnheader"
													tabindex="0" aria-controls="bbsDataTable" rowspan="1"
													colspan="1"
													aria-label="생성일: activate to sort column ascending"
													style="width: 88px;"><span class="title_sort">생성일<ins
															class="ic"></ins><span class="selected"></span></span></th>
											</tr>
										</thead>
										<tbody role="alert" aria-live="polite" aria-relevant="all">
											<tr class="odd">
												<td class="title">이주의 IT뉴스</td>
												<td class="title">다우그룹</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">26</td>
												<td class="align_r sorting_1">76.8</td>
												<td class="align_c">2016-08-04</td>
											</tr>
											<tr class="even">
												<td class="title">사진공모전</td>
												<td class="title">다우그룹</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">14</td>
												<td class="align_r sorting_1">47.2</td>
												<td class="align_c">2017-06-01</td>
											</tr>
											<tr class="odd">
												<td class="title">다우오피스 소식</td>
												<td class="title">다우그룹</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">18</td>
												<td class="align_r sorting_1">4.9</td>
												<td class="align_c">2017-06-01</td>
											</tr>
											<tr class="even">
												<td class="title">전사 공지</td>
												<td class="title">다우그룹</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">116</td>
												<td class="align_r sorting_1">3.8</td>
												<td class="align_c">2015-10-07</td>
											</tr>
											<tr class="odd">
												<td class="title">주간식단표</td>
												<td class="title">다우그룹</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">40</td>
												<td class="align_r sorting_1">2.9</td>
												<td class="align_c">2015-10-12</td>
											</tr>
											<tr class="even">
												<td class="title">영업실적보고</td>
												<td class="title">부서|영업팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">7</td>
												<td class="align_r sorting_1">2.5</td>
												<td class="align_c">2016-08-24</td>
											</tr>
											<tr class="odd">
												<td class="title">자유게시판</td>
												<td class="title">부서|재경팀</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">12</td>
												<td class="align_r sorting_1">1.2</td>
												<td class="align_c">2017-08-11</td>
											</tr>
											<tr class="even">
												<td class="title">다우오피스 활용Tip!</td>
												<td class="title">다우그룹</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">17</td>
												<td class="align_r sorting_1">1.2</td>
												<td class="align_c">2016-08-04</td>
											</tr>
											<tr class="odd">
												<td class="title">다우오피스 세미나&amp;회의</td>
												<td class="title">다우그룹</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">5</td>
												<td class="align_r sorting_1">0.1</td>
												<td class="align_c">2019-10-17</td>
											</tr>
											<tr class="even">
												<td class="title">보고서</td>
												<td class="title">부서|다우그룹</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2020-11-19</td>
											</tr>
											<tr class="odd">
												<td class="title">ㅣㅣ</td>
												<td class="title">부서|영업팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2020-11-24</td>
											</tr>
											<tr class="even">
												<td class="title">(GW)그룹웨어</td>
												<td class="title">부서|영업 2팀</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">5</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2015-10-06</td>
											</tr>
											<tr class="odd">
												<td class="title">Biz Apps MKT</td>
												<td class="title">부서|영업 2팀</td>
												<td class="">피드</td>
												<td class="">정상</td>
												<td class="align_r">4</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2015-10-06</td>
											</tr>
											<tr class="even">
												<td class="title">임시 게시판</td>
												<td class="title">부서|공공개발팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">2</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2015-10-13</td>
											</tr>
											<tr class="odd">
												<td class="title">업무 프로세스</td>
												<td class="title">부서|재경팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2017-08-11</td>
											</tr>
											<tr class="even">
												<td class="title">개발 내역 게시판</td>
												<td class="title">부서|서비스개발부</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">1</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2015-12-11</td>
											</tr>
											<tr class="odd">
												<td class="title">게시판01</td>
												<td class="title">부서|그룹웨어 영업1팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2016-02-16</td>
											</tr>
											<tr class="even">
												<td class="title">123</td>
												<td class="title">부서|Enterprise Application 개발팀</td>
												<td class="">클래식</td>
												<td class="">중지</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2016-02-17</td>
											</tr>
											<tr class="odd">
												<td class="title">게시판02</td>
												<td class="title">부서|그룹웨어 영업1팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2016-02-16</td>
											</tr>
											<tr class="even">
												<td class="title">게시판03</td>
												<td class="title">부서|그룹웨어 영업1팀</td>
												<td class="">클래식</td>
												<td class="">정상</td>
												<td class="align_r">0</td>
												<td class="align_r sorting_1">0.0</td>
												<td class="align_c">2016-02-16</td>
											</tr>
										</tbody>
									</table>
									<div class="tool_bar">
										<div class="critical custom_bottom"></div>
										<div class="dataTables_length" style="display: none;">
											<label> <select size="1" name="bbsDataTable_length"
												aria-controls="bbsDataTable"><option value="20"
														selected="selected">20</option>
													<option value="40">40</option>
													<option value="60">60</option>
													<option value="80">80</option></select>
											</label>
										</div>
										<div class="dataTables_paginate paging_full_numbers"
											id="bbsDataTable_paginate">
											<a tabindex="0"
												class="first paginate_button paginate_button_disabled"
												title="맨앞" id="bbsDataTable_first" data-bypass="true"></a><a
												tabindex="0"
												class="previous paginate_button paginate_button_disabled"
												title="이전" id="bbsDataTable_previous" data-bypass="true"></a><span><a
												tabindex="0" class="paginate_active" data-bypass="true">1</a><a
												tabindex="0" class="paginate_button" data-bypass="true">2</a></span><a
												tabindex="0" class="next paginate_button" title="다음"
												id="bbsDataTable_next" data-bypass="true"></a><a
												tabindex="0" class="last paginate_button" title="맨뒤"
												id="bbsDataTable_last" data-bypass="true"></a>
										</div>
									</div>
								</div>

								<div class="table_search">
									<select>
										<option value="name">게시판 제목</option>
										<option value="sortOwnerInfos">소유부서</option>
									</select> <span class="search_wrap"> <input class="input"
										type="text"> <span class="btn_search" title="검색"></span>
										<input class="submit" type="submit" value="">
									</span>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>









	<div id="jstree-marker" style="display: none;">»</div>
	<div id="jstree-marker-line" style="display: none;"></div>
	<div id="vakata-contextmenu"></div>

</body>
</html>