<%@page import="airdnd.Lodging_VO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="airdnd.Lodging_DB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
    //String lodging_code = request.getParameter("lodging_code");
    String lodging_code = "S_Bukhansan";
	Lodging_DB db = new Lodging_DB();

 	Lodging_VO bag = db.read(lodging_code);
	
	%>
<!DOCTYPE HTML>
<html lang='ko'>
	<head>
		<title> </title>
		<meta charset='utf-8'>
		<meta name='Viewport' content='width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.6'>
		<meta name='Title' content=''>
		<meta name='Subject' content=''>
		<meta name='Keywords' content=''>
		<meta name='Author' content=''>
		<meta name='Publisher' content=''>
		<meta name='Description' content=''>
		<meta name='Author-Date' content=''>
		<meta name='Copyright' content=''>
		<meta name='Robots' content='index,follow'>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
		<link rel='stylesheet' href='css/reset.css'>
		<link rel='stylesheet' href='css/style.css'>
		<link rel='stylesheet' href='css/response.css'>
		
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"><link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap" rel="stylesheet">

		<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.5.0/css/all.css' integrity='sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU' crossorigin='anonymous'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

		<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
		<link rel="icon" href="./favicon.ico" type="image/x-icon">

		<script src='js/jquery.min_1.12.4.js'></script>
		<script src='js/modernizr-custom.js'></script>
		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
		


		<!--[if (lte IE 9)]>
			<script src='js/lib/IE9.js'></script>
		<![endif]-->

		<!--[if (lte IE 8)]>
			<script src='js/lib/html5shiv.min.js'></script>
			<link rel='stylesheet' href='#'>
		<![endif]-->

		<!--[if (lte IE 7)]>
			<link rel='stylesheet' href='#'>
		<![endif]-->

	</head>
	<body>
		<div id="wrap">
			<header id="header" class="header">
				<div class="container">
					<div class="row cf">
						<h1><a href="main.jsp">airdnd</a></h1>
						<div class="gnb cf">
							<ul class="cf">
								<li><a href="#">로그인</a></li>
								<li><a href="#">회원가입</a></li>
								<li><a href="#">고객센터</a></li>
							</ul>
						</div>
					</div>
				</div>
			</header>
			<main id="main">
				<div class="container">
					<div class="bxslider">
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>01.jpg"></div>
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>02.jpg"></div>
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>03.jpg"></div>
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>04.jpg"></div>
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>05.jpg"></div>
						<div><img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>06.jpg"></div>
					</div>
				</div>
			</section>			
			<script>
				$(function(){
					$('.bxslider').bxSlider({
					mode: 'fade',
					captions: true,
					auto: true,
					speed:  1000
					
					});
				});
			</script>
			</main>
			  <script>
				var swiper = new Swiper('.swiper-container', {
				  slidesPerView: 4,
				  spaceBetween: 30,
				  pagination: {
					el: '.swiper-pagination',
					clickable: true,
				  },
				  autoplay:{
				  delay:5000,
				  },
				  breakpoints: {
					600:  {
						slidesPerView: 1.4,
						spaceBetween: 24
					},
					960:  {
						slidesPerView: 2,
						spaceBetween: 24
					},
					1200: {
						slidesPerView: 3,
						spaceBetween: 24
					}	
}					
				});
			  </script>

			<section id="muser" class="muser">
				<div class="container">
					<h2><span><%= bag.getName()%></span></h2>
					<ul class="userText">
						<li>"<%= bag.getContents() %>" <span><%= bag.getType() %></span></li>
						<li>"<%= bag.getAnimals() %>" <span>반려동물</span></li>
						<li>"<%= bag.getDate() %>" <span>숙소 예약 가능날짜</span></li>
						<li>"<%= bag.getLocation()%>"<span>숙소 위치</span></li>
					</ul>
				</div>
			</section>
			<section id="reference" class="reference">
				<div class="container">
					<h2 class="so">레퍼런스</h2>
					<img src="images/<%= bag.getCode()%>/<%= bag.getCode()%>07.jpg" alt="<%= bag.getCode()%>"/>
				</div>
			</section>
			<section id="etc_box" class="etc_box">
				<div class="container">
					<h2 class="so">기타 내용</h2>
					<ul>
						<li>무선 인터넷</li>
						<li>난방</li>
						<li>디지털 도어록</li>
						<li>주방</li>
						<li>세탁기</li>
					</ul>
				</div>
			</section>
			<footer id="footer">
				<div class="container">
					<div class="f_inner">
						<ul>
							<li class="foot1">
								<div class="tit">COMPANY</div>
								<div class="txt">
									(주)에어디앤디<br/>
									대표 심재홍 사업자등록번호 105-87-15982<br/>
									통신판매번호 2016-서울영등포-0438<br/>
									<a href="# ">사업자번호조회</a>
								</div>
							</li>
							<li class="foot2">
								<div class="tit">INFORMATION</div>
								<div class="txt">
									<a href="#">이용약관</a>/ <a href="#">개인정보처리방침</a><br/>
									<a href="#">저작권(라이선스)규정</a>
								</div>
							</li>
							<li class="foot3">
								<div class="tit">CLIENT CENTER</div>
								<div class="txt">
									이메일문의 <span>support@airdnd.net</span><br/>
									전화 문의 <span>02-2655-9766</span><br/><span><a href="#">[자주묻는질문]</a></span>전화번호가 안내되어 있습니다.<br/>
								</div>
							</li>
						</ul>
						<div class="util">
							<ul>
								<li><a href="#"><img src="images/foot_f_ico.png" alt="foot_f_ico"/></a></li>
								<li><a href="#"><img src="images/foot_b_ico.png" alt="foot_b_ico"/></a></li>
								<li><a href="#"><img src="images/foot_y_ico.png" alt="foot_y_ico"/></a></li>
								<li><a href="#"><img src="images/foot_p_ico.png" alt="foot_p_ico"/></a></li>
								<li><a href="#"><img src="images/foot_n_ico.png" alt="foot_n_ico"/></a></li>
							</ul>
						</div>
					</div>
					<div class="copy">
						&copy; AIRDND INFOGRAPHICS. ALL RIGHT RESERVER
					</div>
				</div>
			</footer>
		</div>
	</body>
</html>