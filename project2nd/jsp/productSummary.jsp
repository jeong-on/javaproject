<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.content {
float:left;
	width: 100%;
	height: 100%;
}

#top {
	float: left;
	width: 100%;
	height: 20%;
}

#empty {
	float: left;
	width: 30%;
	height: 20%;
}

.category {
	float: right;
	width: 70%;
	height: 20%;
}

#productSummary {
	float: left;
	width: 30%;
	height: 80%;
}

#map {
	float: right;
	width: 70%;
	height: 80%;
}

/* 카테고리 div영역내에 있는 div를 수평으로 나열하기 위한 설정 */
.category_common {
	display: inline-block;
	width: 100px;
	height: 50px;
	border: 1px solid blue;
}
</style>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css">

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link href="resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="resources/vendor/fontawesome-free/css/all.min.css/vendor/simple-line-icons/css/simple-line-icons.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="resources/css/landing-page.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/landing-page.css" rel="stylesheet"
	type="text/css">


<body>
	<!-- Navigation : 위에 부분-->
	<nav class="navbar navbar-light bg-light static-top">
		<div class="logo">
			<a class="navbar-brand" href="main.jsp">내 집은 신촌에 있나방</a>
		</div>
		<div id="menu">
			<a class="btn btn-primary btn-lg" href="productSummary.jsp">방찾기</a> <a
				class="btn btn-primary btn-lg" href="#">마이페이지</a> <a
				class="btn btn-primary btn-lg" href="#">방내놓기</a> <a
				class="btn btn-primary btn-lg" href="#">고객센터</a> <a
				class="btn btn-primary btn-lg" href="#">Sign In</a>
		</div>
	</nav>

	<!-- Section :  -->
	<section class ="content">
		<div id="top">
			<div id="empty">
			빈곳
			</div>

			<div class="category">
				카테고리 영역
				<div class = "category_common"> 카테고리1</div>
				<div class = "category_common"> 카테고리2</div>
				<div class = "category_common"> 카테고리3</div>
				<div class = "category_common"> 카테고리4</div>
			</div>
			
		</div>
		
		<div id="productSummary">상품담는 영역</div>

		<div id="map">지도를 담을 영역</div>
	</section>
	
	
</body>
</html>