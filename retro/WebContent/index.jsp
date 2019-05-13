<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/section.css?v=1">
<title>Insert title here</title>
</head>
<body>
	<%@  include file="include/header.jsp"%>
	<section>

		<div class="gallery">
			<ul>
				<li>
					<c:forEach items="${bestList}" var="best">
						<a href="#"><img src="images/${best.p_img}" target="_blank "></a>
					</c:forEach>
				</li>
			</ul>
			<div class="desc">
				<a href="https://www.gucci.com/kr/ko/lo/runway-c-runway"><h2>BEST
						GUCCI LOOK</h2></a>

				<p id="gucci">EXO KAI is best guc</p>

			</div>
		</div>

		<div class="gallery">
			<ul>
			<c:forEach items="${bestList}" var="best">
						<a href="#"><img src="images/${best.p_img}" target="_blank "></a>
					</c:forEach>
				<!-- <li><a img="images/나나즈샤넬.png" target="_blank"> <img
						src="images/나나즈샤넬.png" alt="갤러리 이미지1">
				</a> <a img="images/제니샤넬.jpg" target="_blank"> <img
						src="images/제니샤넬.jpg" alt="갤러리 이미지1">
				</a> <a img="images/사쿠라샤넬.jpg" target="_blank"> <img
						src="images/사쿠라샤넬.jpg" alt="갤러리 이미지1">
				</a> <a img="images/라이콴린.jpg" target="_blank"> <img
						src="images/라이콴린.jpg" alt="갤러리 이미지1">
				</a></li> -->
			</ul>

			<div class="desc">
				<h2>BEST CHANEL LOOK</h2>
				<p id="gucci">EXO KAI is best guc</p>
			</div>

		</div>
		<div class="gallery">
			<ul>
				<li><a img="images/채워니.jpg" target="_blank"> <img
						src="images/채워니.jpg" alt="갤러리 이미지1">
						<div></div>
				</a> <a img="images/다니엘시스템.jpg" target="_blank"> <img
						src="images/다니엘시스템.jpg" alt="갤러리 이미지1">
				</a> <a img="images/민현꼼데2.jpg" target="_blank"> <img
						src="images/민현꼼데2.jpg" alt="갤러리 이미지1">
				</a> <a img="images/발렌시아가.jpg" target="_blank"> <img
						src="images/발렌시아가.jpg" alt="갤러리 이미지1">
				</a></li>
			</ul>

			<div class="desc">
				<h2>BEST K-POP STAR LOOK</h2>
				<p id="gucci">EXO KAI is best gucci dreessr</p>

			</div>
		</div>



	</section>

	<%@ include file="include/footer.jsp"%>

</body>
</html>