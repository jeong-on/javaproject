<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>내 집은 신촌에 있나방</title>

  <!-- Bootstrap core CSS -->
  <link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

  <!-- Custom fonts for this template -->
  <link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
  <link href="resources/vendor/fontawesome-free/css/all.min.css/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="resources/css/landing-page.min.css" rel="stylesheet" type="text/css">
  <link href="resources/css/landing-page.css" rel="stylesheet" type="text/css">

</head>

<body>
  <!-- Navigation : 맨 위 메뉴바 부분/ 모든 페이지에 공통적으로 들어갈 부분(메뉴바)-->
  <nav class="navbar navbar-light bg-light static-top">
  	<div class="logo">
	  <a class="navbar-brand" href="main.jsp">내 집은 신촌에 있나방</a>
  	</div>
    <div id="menu">
      <a class="btn btn-primary btn-lg" href="productSummary.jsp">방찾기</a>
      <a class="btn btn-primary btn-lg" href="#">마이페이지</a> <!-- href에 각자 만든 페이지 주소 넣어주기 -->
      <a class="btn btn-primary btn-lg" href="#">방내놓기</a><!-- href에 각자 만든 페이지 주소 넣어주기 -->
      <a class="btn btn-primary btn-lg" href="#">고객센터</a><!-- href에 각자 만든 페이지 주소 넣어주기 -->
      <a class="btn btn-primary btn-lg" href="#">Sign In</a><!-- href에 각자 만든 페이지 주소 넣어주기 -->
    </div>
  </nav><!-- navigation 종료 -->

  <!-- Masthead: 헤더부분 -->
  <header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
      <div class="row">
        <div class="col-xl-9 mx-auto">
          <h1 class="mb-5">어떤 방을 찾으세요?</h1>
        </div>
        <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
          <form>
            <div class="form-row">
              <div class="col-12 col-md-9 mb-2 mb-md-0">
                <input type="text" class="form-control form-control-lg" placeholder="지역 또는 단지명을 입력하세요.">
              </div>
              <div class="col-12 col-md-3">
                <button type="submit" class="btn btn-block btn-lg btn-primary">방찾기</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </header>

  <!-- Icons Grid : 섹션 영역-->
  <section class="features-icons bg-light text-center">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-screen-desktop m-auto text-primary"></i>
            </div>
            <h3>사진</h3>
            <p class="lead mb-0">div태그 안에 사진 넣기</p> <!-- p태그를 div로 바꿔서 사진 넣기 -->
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-layers m-auto text-primary"></i>
            </div>
            <h3>사진</h3>
            <p class="lead mb-0">div태그 안에 사진 넣기</p><!-- p태그를 div로 바꿔서 사진 넣기 -->
          </div>
        </div>
        <div class="col-lg-4">
          <div class="features-icons-item mx-auto mb-0 mb-lg-3">
            <div class="features-icons-icon d-flex">
              <i class="icon-check m-auto text-primary"></i>
            </div>
            <h3>사진</h3>
            <p class="lead mb-0">div태그 안에 사진 넣기</p><!-- p태그를 div로 바꿔서 사진 넣기 -->
          </div>
        </div>
      </div>
    </div>
  </section>
	<!-- Footer -->
	<footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-left my-auto">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="#">About</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Contact</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
						<li class="list-inline-item">&sdot;</li>
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
					</ul>
					<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
						2020. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-right my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fab fa-facebook fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item mr-3"><a href="#"> <i
								class="fab fa-twitter-square fa-2x fa-fw"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-instagram fa-2x fa-fw"></i>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
    