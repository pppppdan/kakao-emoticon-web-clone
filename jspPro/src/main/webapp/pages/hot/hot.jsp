<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 이모티콘샵</title>
<link rel="shortcut icon" href="https://t1.kakaocdn.net/estoreweb/favicon/e_16x16.ico" />
<link rel="stylesheet" href="../../css/header/header.css" />
<link rel="stylesheet" href="../../css/hot/hot.css?ver=1"  />
<%
String contextPath = request.getContextPath(); 
%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>



	<div id="kakaoIndex"
		style="overflow: hidden; position: absolute; left: -9999px; width: 0; height: 1px; margin: 0; padding: 0;">
		<a href="#dkBody">본문 바로가기</a> <a href="#dkGnb">메뉴 바로가기</a>
	</div>

	<div id="root" style="height: 100%;">
		<div id="kakaoWrap" class="default head_bnr menu_in">

			<!-- 로그인 하면 나오는 띠배너 -->
			<c:if test="${ not empty sessionScope.email }">
				<div class="kakaoTopbnr">
					<div class="wrap_topbnr"
						style="background-color: rgb(152, 232, 231);">
						<div class="inner_topbnr">
							<a href="https://my.kakao.com/product/EMOTICON001?t_src=emoticon&amp;t_ch=webstore&amp;t_obj=web_gnb_banner"
								class="link_bnr"> 
								<span class="txt_info" style="color: rgb(0, 0, 0);">이모티콘 무제한! 웹에선 평생 할인</span> 
								<span class="unit_coupon"> 
									<img src="https://item.kakaocdn.net/dn/e1iAq/btrFiaXi8G1/wYPKhfbRvUgCYIgsxc9V5k/img.png"
									class="img_coupon" alt="띠배너이미지">
								</span>
							</a>
						</div>
						<button class="btn_close_tb" aria-label="띠배너닫기">
							<span class="ico_comm ico_closew"></span>
						</button>
					</div>
				</div>
			</c:if>



			<div id="kakaoHead" class="emoticon_head">
				<div class="k_head">
					<button class="link_menu" id="side_open">
						<span class="ico_comm ico_menu">사이드메뉴 열기</span>
						<c:if test="${ not empty sessionScope.email }">
							<span class="ico_comm ico_new">new</span> 
						</c:if>
					</button>
					<a class="link_home" href="/"><span class="ico_comm ico_home">홈으로
							이동</span></a>
					<h1 class="tit_logo">
						<a class="link_thome" href="/">
							<span class="ico_comm ico_logo">kakao emoticon shop</span>
						</a> 
						<span class="ico_comm ico_logo">kakao emoticon shop</span>
					</h1>
					<strong class="tit_cont"></strong>
					<button class="link_search">
						<span class="ico_comm ico_search">검색하기</span>
					</button>
					<button class="link_my">
						<span class="wrap_thumb">
							<span class="inner_thumb">
								<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin'}">
									<c:forEach var="memberList" items="${ memberList }">
										<c:if test="${ memberList.m_id eq sessionScope.email }">
											<img class="thumb_user"
												src="${ memberList.m_pimg }"
												width="28px" height="28px" alt="사용자">
										</c:if>
									</c:forEach>
								</c:if>
								<c:if test="${ empty sessionScope.email || sessionScope.email eq 'admin' }">
									<a href="/"> <!-- 로그인 페이지 -->
										<img class="thumb_user"
												src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/profile_default.png"
												width="28px" height="28px" alt="사용자">
									</a>
								</c:if>
							</span>
						</span>
					</button>

					<!-- 로그인 후 프로필 클릭하면 보이는 프로필창 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
						<c:forEach var="memberList" items="${ memberList }">
							<c:if test="${ memberList.m_id eq email }">
								<div class="profile_layer">
		`							<span class="wrap_thumb"> 
										<span class="inner_thumb">
											<img class="thumb_user" src="${ memberList.m_pimg }" width="40px" height="40px" alt="사용자">
										</span>
									</span> 
									<span class="tit_thumb">${ memberList.m_nn }</span> 
									<span class="desc_email">${ memberList.m_id }</span>
									<button class="btn_logout">로그아웃</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>

					<!-- 관리자로 로그인할 경우, 프로필 창에 이모티콘 추가 삭제 버튼 -->
					<c:if test="${ sessionScope.email eq 'admin' }">
						<div class="profile_layer">
			               	<span class="tit_thumb">admin</span>
			               	<button class="btn_em_add" onclick="location.href='../add_delete/em_add.do'">이모티콘 추가</button>
			               	<button class="btn_em_delete" onclick="location.href='../add_delete/em_delete.do'">이모티콘 삭제</button>
			               	<button class="btn_em_logout">로그아웃</button>
		               </div>
		            </c:if>

					<!-- 로그인 한 경우, 쿠폰 발급 알림 -->
					<c:if test="${ not empty sessionScope.email && sessionScope.email ne 'admin' }">
		              	<div class="tooltip_layer">
		               		<div class="area_tooltip">
		               			<p class="layer_tooltip">
		               				<a class="link_tooltip" href="/mypage/coupons"><strong>항상 전상품 20% 할인</strong> 쿠폰이 발급되었습니다.</a>
		               			</p>
		               			<button class="btn_close_tt" aria-label="툴팁닫기">
		               				<span class="ico_comm ico_close"></span>
		               			</button>
		               		</div>
		               </div> 
	               </c:if>

				</div>

				<div class="search_wrap on">
					<div class="dim_layer"></div>
					<form class="search-box__form" action="/jspPro/pages/header/search.do">
						<div class="inner_search">
							<h3 class="screen_out">이모티콘 검색어 입력</h3>
							<div class="emoticon_sch">
								<div class="box_search">
									<input type="text" id="tfSearch" name="q"
										placeholder="이모티콘을 검색해보세요!" class="tf_search"
										autocomplete="off" value="">
									<button type="button" id="search_delete" class="btn_delete">
										<span class="ico_comm ico_schdelete">검색어 지우기</span>
									</button>
									<button type="submit" class="btn_search">
										<span class="ico_comm ico_sch">검색</span>
									</button>
								</div>
							</div>
							<button type="button" class="btn_schcancel">취소</button>
						</div>
					</form>
				</div>

				<nav id="kakaoGnb">
					<h2 class="screen_out">kakao emoticon shop 메인메뉴</h2>
					<ul class="list_gnb">
						<!-- 해당 페이지에 클래스 on 넣기  -->
						<li class=""><a class="link_gnb" href="/jspPro/pages/home/home.do">홈</a></li>
						<li class=""><a class="link_gnb" href="/jspPro/pages/new/new_kakao.do">신규</a></li>
						<li class="on"><a class="link_gnb" href="/jspPro/pages/hot/hot.do">인기</a></li>
						<li class=""><a class="link_gnb" href="/jspPro/pages/style/style.do">스타일</a></li>
					</ul>
				</nav>
			</div>
			<!-- header -->
	        
	        
	        
	        <div id="kakaoContent" class="cont_home">
				<div class="area_hottab">
					<div class="area_tabbnr">
						<h3 class="tit_tab">
							<img class="img_bnrtit"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_tit_hot.png"
								alt="배너 텍스트 이미지"><img class="img_bnrbg"
								src="https://t1.kakaocdn.net/estoreweb/images/20220421091219/bnr_bg_hot.png"
								alt="배너이미지">
						</h3>
					</div>
					<ol class="list_double">
						<c:forEach var="hotList" items="${ hotList }" varStatus="status">
							<li class="hot_item">
								<c:if test="${ status.count <= 3 }">
									<span class="txt_num num_highlight">${ status.count }</span>
								</c:if>
								<c:if test="${ status.count > 3 && status.count <= 99 }">
									<span class="txt_num">${ status.count }</span>
								</c:if>
								<c:if test="${ status.count >= 100 }">
									<span class="txt_num_small" style="">${ status.count }</span>
								</c:if>
								
								<div class="double_tit">
									<a class="link_double" href="<%=contextPath%>/pages/view/view.do?el_num=${ hotList.el_num }">
										<div class="area_tit">
											<strong class="tit_product">
												<c:forEach var="hotNewList" items="${ hotNewList }">
													<c:if test="${ hotNewList.el_num eq hotList.el_num }">
														<span class="area_icons">
															<span class="ico_comm ico_newemot">NEW</span>
														</span>
													</c:if>
												</c:forEach>
												<span class="txt_tit">${ hotList.el_name }</span>
											</strong>
											<span class="txt_author">${ hotList.el_maker }</span>
										</div>
									</a>
									
									
									<!-- 좋아요 한 이모티콘이면 ico_likeOn 클래스명 넣기 +  btn_grpshare display 속성 block-->
									<button type="button" class="btn_grpshare">
										<span class="ico_comm ico_like">좋아요</span>
									</button>
								</div>
								<a class="link_double double_img" href="#" >
									<!-- 이모티콘 등록한거 가져오려면 /Kakao/upload/이모티콘이름/이미지이름 -->
									<div class="area_doubleemoticon">
										<c:if test="${ status.count >= 103 }">
											<img src="/jspPro/upload/${ hotList.el_name }/${ hotList.el_stopimg }" class="img_emot img_default">
										</c:if>
										<c:if test="${ status.count < 103 }">
											<img src="${ hotList.el_stopimg }" class="img_emot img_default">
										</c:if>
									</div>
									<div class="area_doubleemoticon">
										<c:if test="${ status.count >= 103 }">
											<img src="/jspPro/upload/${ hotList.el_name }/${ hotList.el_mainimg }" class="img_emot img_hover">
										</c:if>
										<c:if test="${ status.count < 103 }">
											<img src="${ hotList.el_mainimg }" class="img_emot img_hover">
										</c:if>
										
									</div>
								</a>
							</li>
						</c:forEach>
					</ol>
					<div></div>
				</div>
			</div> <!-- content -->
			
			
			
			
			
			
         </div> <!-- #kakaoWrap -->
	</div> <!-- #root -->
         


	
	
	
	
	
	
	
	
	
	
	
<script type="text/javascript">
		/* 검색 관련 */

		// 검색 버튼 클릭 
		$(".link_search").on("click", function() {
			$(".search_wrap").css("display", "block");
			$(".k_head").css("z-index", "2");
			$("#kakaoGnb").css("position", "relative");
			$("#kakaoGnb").css("z-index", "1");
			$(".link_search").css({
				"cursor" : "default",
				"display" : "none"
			});
			$(".btn_delete").css({
				"cursor" : "default",
				"display" : "none"
			});
			$(".profile_layer").css("display", "none");
			$(".link_thome").css("margin-right", "44px");
		});

		//검색창 밖 클릭시 검색창 제거 + 입력했던 값 제거
		$(".dim_layer").on("click", function() {
			$(".search_wrap").css("display", "none");
			$(".link_search").css({
				"cursor" : "pointer",
				"display" : "block"
			});
			$(".tf_search").val("");
			$(".link_thome").css("margin-right", "0px");
		});

		//검색 삭제 버튼
		$(".tf_search").on("keyup", function() {
			$(".btn_delete").css("display", "");
		});

		// 검색어 삭제 
		$(".btn_delete").on("click", function() {
			$(".tf_search").val("");
			$(".btn_delete").css("display", "none");
		});

		/* 쿠폰알림창 */
		$(".btn_close_tt").on("click", function() {
			$(".tooltip_layer").css("display", "none");
		});

		/* 띠 배너 */
		//띠배너 닫기
		$(".btn_close_tb").on("click", function() {
			$(".kakaoTopbnr").css("display", "none");
			$(".emoticon_head").css("top", "0px");
			$(".search_wrap").css("top", "110px");
			$(".area_hottab").css("margin-top", "0px");
		});

		if (${ not empty sessionScope.email }) {
			$(".head_bnr .emoticon_head").css("top", "50px");
			$(".head_bnr .search_wrap").css("top", "160px");
			$(".area_hottab").css("margin-top", "50px");
		}

		/* 프로필 */
		$(".link_my").on("click", function() {
			$(".profile_layer").toggle();
		});
		
		/* 로그아웃 */
		$(".btn_em_logout").on("click", function() {
			//sessionStorage.clear();  //세션 데이터 삭제
			<%-- 
			<% 
			session.invalidate();
			session = request.getSession(true);
			%>
			 --%>
			 <% session.removeAttribute("email"); %>
			location.reload(); //새로고침
		});
		
		$(".btn_logout").on("click", function() {
			//sessionStorage.clear();  //세션 데이터 삭제
			<%-- 
			<% 
			session.invalidate();
			session = request.getSession(true);
			%>
			 --%>
			 <% session.removeAttribute("email"); %>
			location.reload(); //새로고침
		});
	</script>




</body>
</html>