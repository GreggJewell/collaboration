<html>
<head>
<title>PEDESTAL | PED Management System - Login</title>
<link rel="icon" href="pedestal.ico">
<link rel="stylesheet" href="https://use.typekit.net/enr6eoe.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<!-- The video -->
	<video autoplay muted loop id="myVideo">
		<?php
			if (rand(0, 1)) {
				echo '<source src="pred.mp4" type="video/mp4">';
			} else {
				echo '<source src="pred2.mp4" type="video/mp4">';
			}
		?>
	</video>

	<div id="content" class="animate fadeInBG three">
		<div id="title" class="animate fadeIn one">
			<img src="pedestal.png" style="width:80px;height:80px;margin-right: 20px;" class="animate fadeInImg three">
			PED<span id="add" class="animatelong fadeInAdd">ESTAL</span>
		</div>
		<div id="base" class="animatelong fadeInUp one"></div>
		<div id="login" class="animate fadeIn three">
			<button>PKI Login</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button>Guest</button>
		</div>
	</div>
	
	<footer>&copy; 2018 11th SOIS</footer>
</body>
</html>