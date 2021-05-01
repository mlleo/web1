<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<% response.setContentType("text/html; charset=utf-8"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>SSAFY BOOK CAFE</title>
<link rel="shortcut icon" href='img/favicon.ico'>
<link rel="stylesheet" href='css/main.css'> 
</head>
<%!
String[] anottice={"로그인","회원가입","로그아웃","마이페이지","관리자"};
%>
<body>
<!--header  -->
<header>
	<nav>
	<a class='header_nav_home' href='#'>SSAFY BOOKCAFE</a>
	<a  href='#'>공지사항</a>
		<div  class='header_nav_menu'>
		<%
			for(int i=0; i<anottice.length; i++){
				%>
				 <div class='header_nav_menuitem'>
			    	<a class='nav_link' href='#'><%=anottice[i] %></a>
			     </div>
				<%
			}
		%>
		</div>
	</nav>
</header>
<!-- 중앙 컨텐츠  -->
<div class='content'>
	<!-- 왼쪽 컨텐츠  -->
	<div class='content_left'>
		<!-- 프로필 사진  -->
		<div class='profile'>
			<img class="profile_img" src='img/noimg.png'  alt='No Image'/>
			<img class="profile_img" src='img/profile.png'  alt='Profile Image'/>
		</div>
		<!-- 프로필 사진 end  -->
		<!-- 메뉴  -->
		<div class="store_title"> 
			<div class="store_display">전국매장펼치기</div>
			<div class="store_display" style="display: none">전국매장접기</div>
			<ul class='store_item'>
				<li>
					<a class='store_area'>서울</a>
					<div class='store_item_sub'>
						<ul>
							<li>역삼점</li>
							<li>선릉점</li>
						</ul>
					</div>
				</li>
				<li>
					<a class='store_area'>대전</a>
					<div  class='store_item_sub'>
						<ul>
							<li>학하점</li>
							<li>봉명점</li>
						</ul>
					</div>
				</li>
				<li>
					<a class='store_area'>구미</a>
					<div  class='store_item_sub'>
						<ul>
							<li>인동점</li>
							<li>공단점</li>
						</ul>
					</div>
				</li>
				<li>
					<a class='store_area'>광주</a>
					<div  class='store_item_sub'>
						<ul>
							<li>하남산단점</li>
							<li>광주역점</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- 메뉴  End-->
		<!-- 설문 -->
		<div class="vote">
			<div class="vote_title">[ 당신의 선택 ]</div>
			<div class="vote_question">공부하고 싶은 분야를 골라주세요!</div>
			<div class="vote_answer">
				<ul>
					<li>
						<input type="radio" name='vote_answer' id=''/>
						<img src='img/poll/python.png' alt=''/> Python
					</li>
					<li>
						<input type="radio" name='vote_answer' id=''/>
						<img src='img/poll/html5.png' alt=''/> HTML5
					</li>
					<li>
						<input type="radio" name='vote_answer' id=''/>
						<img src='img/poll/java.png' alt=''/> JAVA
					</li>
					<li>
						<input type="radio" name='vote_answer' id=''/>
						<img src='img/poll/vuejs.png' alt=''/> Vue.js
					</li>
				</ul>
			</div>
			<div class="vote_button">
				<button class="button btn_primary">투표하기</button>
				<button class="button">결과보기</button>
			</div>
			<div class="vote_date">투표기간: 21.03.01~ 21.03.31</div>
		</div>
		<!-- 설문  End-->
	</div>
	<!-- 왼쪽 컨텐츠 엔드 -->
	
	<!-- 중앙 컨텐트 -->
	<div class="content_body">
		<!-- 프로그래밍  section-->
		<section class="menu">
			<h3 class="menu_title">[프로그래밍 언어]</h3>
			<ul>
				<li>
					<div class="menu_item">
						<div class="menu_item_img">
							<img alt="" src="img/book/p_book01.png"/>
						</div>
						<div class="menu_item_info">
							Do it! 점프 투 파이썬<br/>(18,800원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
						<div class="menu_item_img">
							<img alt="" src="img/book/p_book02.png"/>
						</div>
						<div class="menu_item_info">
							HTML5 API 프로그래밍<br/>(23,300원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
						<div class="menu_item_img">
							<img alt="" src="img/book/p_book03.png"/>
						</div>
						<div class="menu_item_info">
							백견불여일타 Vue.js입문<br/>(22,000원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
						<div class="menu_item_img">
							<img alt="" src="img/book/p_book04.png"/>
						</div>
						<div class="menu_item_info">
							Java 프로그래밍<br/>(26,500원)
						</div>
					</div>
				</li>
			</ul>
		</section>
		<!-- 프로그래밍  section end -->
		<!-- 에세이 section-->
		<section class="menu">
			<h3 class="menu_title">[에세이]</h3>
			<ul>
				<li>
					 <div class="menu_item">
                		<div class="menu_item_img">
							<img alt="" src="img/book/e_book01.png">
						</div>
						<div class="menu_item_info">
							2인조<br/>(14,800원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
                		<div class="menu_item_img">
							<img alt="" src="img/book/e_book02.png">
						</div>
						<div class="menu_item_info">
							안녕, 소중한 사람<br/>(15,000원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
                		<div class="menu_item_img">
							<img alt="" src="img/book/e_book03.png">
						</div>
						<div class="menu_item_info">
							꽃을 보듯 너를 본다<br/>(10,000원)
						</div>
					</div>
				</li>
				<li>
					<div class="menu_item">
                		<div class="menu_item_img">
							<img alt="" src="img/book/e_book04.png">
						</div>
						<div class="menu_item_info">
							곰돌이 푸, 행복한 일을 매일 있어<br/>(12,000원)
						</div>
					</div>
				</li>
			</ul>
		</section>
		<!-- 사진전  추가변경-->
		<section class="menu">
			<h3 class="menu_title">[사진전]</h3>
			<ul>
				<li>
					 <div class="gallery">
					  <a target="_blank" href="img_5terre.jpg">
					    <img src="gall/img_5terre.jpg" alt="Cinque Terre">
					  </a>
					  <div class="desc">강지은작품</div>
					</div>
				</li>
				<li>
					<div class="gallery">
					  <a target="_blank" href="img_forest.jpg">
					    <img src="gall/img_forest.jpg" alt="Forest" width="600" height="400">
					  </a>
					  <div class="desc">권순주작품</div>
					</div>
				</li>
				<li>
					<div class="gallery">
					  <a target="_blank" href="img_lights.jpg">
					    <img src="gall/img_lights.jpg" alt="Northern Lights" width="600" height="400">
					  </a>
					  <div class="desc">김낙현작품</div>
					</div>
				</li>
				<li>
					<div class="gallery">
					  <a target="_blank" href="img_mountains.jpg">
					    <img src="gall/img_mountains.jpg" alt="Mountains" width="600" height="400">
					  </a>
					  <div class="desc">김예슬</div>
					</div>
				</li>
			</ul>
		</section>
		<!-- 사진전  추가변경 end-->
		
		
		
		<!-- 에세이  section end -->
		<section class="article">
			<!-- 인기글 Article -->
			<article class="article_popular">
				<h3 >[ 인기글 ]</h3>
				<table class="table table_striped">
					<thead>
						<tr>
							<th class="title">제목</th>
							<th>작성자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>자바공부 쉽게 하는법</td>
							<td>이쎄림</td>
							<td>1756</td>
						</tr>
						<tr>
							<td>알고리즘 자바? 파이썬?</td>
							<td>홍정밍</td>
							<td>998</td>
						</tr>
						<tr>
							<td>스프링 정복하기</td>
							<td>김나켠</td>
							<td>856</td>
						</tr>
					</tbody>
				</table>
			</article>
			<!-- 인기글 Article end-->
			<!-- 최신 Article -->
			<article class="article_new">
				<h3>[ 최신글 ]</h3>
				<table class="table table_bordered table_hover">
					<thead>
						<tr>
							<th class="title">제목</th>
							<th>작성자</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Web 관련 질문있어요</td>
							<td>이주녕</td>
							<td>12</td>
						</tr>
						<tr>
							<td>Vuejs는 이렇게 공부해보세요.</td>
							<td>조밍기</td>
							<td>98</td>
						</tr>
						<tr>
							<td>꽃길만 걸어요.</td>
							<td>류해면</td>
							<td>56</td>
						</tr>
					</tbody>
				</table>
			</article>
			<!--  초신글 Article end-->
		</section>
	</div>
	<!-- 중앙  컨텐츠 엔드 -->
</div>
<!-- 하단 -->
<footer>
	<ul>
		<li><a href='#'>카페소개</a></li>
		<li><a href='#'>개인정보처리방침</a></li>
		<li><a href='#'>이용약관</a></li>
		<li><a href='#'>오시는길</a></li>
		<li>&copy; SSARY Corp.</li>
	</ul>
</footer>
<!-- 하단  end-->
</body>
</html>