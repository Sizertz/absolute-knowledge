<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.test.test.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Absolute Knowledge</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<link rel="stylesheet" href="assets/css/notrestyle.css" />
</head>
<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<a href="index.jsp" class="logo"><strong>Absolute
							Knowledge</strong> by M2i</a>
					<ul class="icons">
						<li class="active"><a href="index.jsp"><span>Accueil</span></a></li>
						<li><a href="cours.jsp"><span>Cours</span></a></li>
					</ul>

				</header>



				<!-- Section -->
				<section>
					<header class="major">
						<h2>Liste des cours</h2>
					</header>
					<div class="posts">
					
					<%
					
					for (int i=0; i<3; i++) { // REMPLACER LE 3 PAR LE NOMBRE DE COURS DANS LA BDD
						
						 testChapitre testChap1 = new testChapitre();
						 
						 // récupérer le chapitre sélectionné
						 String article = "<article><a href='chapitre.jsp?id=";
						 article += testChap1.getId() + "' class='image'><img src='";
						 article += testChap1.getImg() + "' alt=''/></a><h3>";
						 article += testChap1.getNom() + "</h3><p>";
						 article += testChap1.getDescription() + "</p><ul class='actions'><li><a href='chapitre.jsp?id=";
						 article += testChap1.getId() + "' class='button'>voir plus</a></li></ul></article>";
						 
						 out.println(article);
						 
	
					}
					
					
					
					
					%>  
					
					</div>
				</section>

			</div>

			<footer id="footer">
				<p class="copyright">
					&copy; Untitled. All rights reserved. Demo Images: <a
						href="https://unsplash.com">Unsplash</a>. Design: <a
						href="https://html5up.net">HTML5 UP</a>.
				</p>
			</footer>
		</div>
	</div>


	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>