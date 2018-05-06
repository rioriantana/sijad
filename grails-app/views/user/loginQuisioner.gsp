<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


	<!-- General meta information -->
	<title>Login SIJAD</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta name="robots" content="index, follow" />
	<meta charset="utf-8" />
	<!-- // General meta information -->
	
	
	<!-- Load Javascript -->
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'jquery.query-2.1.7.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'rainbows.js')}"></script>
	<!-- // Load Javascipt -->

	<!-- Load stylesheets -->
	<link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" media="screen" />
	<!-- // Load stylesheets -->
	<style type="text/css">

		.quisioner{
			margin-top: -30px;
			margin-left: -170px;
		}
		
		.quisioner a:link, a:visited {
		    background-color: #f44336;
		    color: white;
		    padding: 10px 20px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		}


		.quisioner a:hover, a:active {
		    background-color: red;
		}

	</style>
<script>


	$(document).ready(function(){
 
	$("#submit1").hover(
	function() {
	$(this).animate({"opacity": "0"}, "slow");
	},
	function() {
	$(this).animate({"opacity": "1"}, "slow");
	});
 	});


</script>
	
</head>
<body>

	<div id="wrapper">
		<div id="wrappertop"></div>

		<div id="wrappermiddle">

			<h2>Login</h2>

	<g:form action="doLogin">
			<div id="username_input">

				<div id="username_inputleft"></div>
				<div id="username_inputmiddle">
					<input type="text" name="nim" id="url" placeholder="NIM" onclick="this.value = ''">
					<img id="url_user" src="${resource(dir: 'images', file: 'mailicon.png')}" alt="">
				</div>

				<div id="username_inputright"></div>

			</div>

			<!-- <div id="password_input">

				<div id="password_inputleft"></div>

				<div id="password_inputmiddle">
					<input type="password" name="password" id="url" Placeholder="Password" onclick="this.value = ''">
					<img id="url_password" src="${resource(dir: 'images', file: 'passicon.png')}" alt="">
			
				</div>

				<div id="password_inputright"></div>

			</div> -->

			<div id="submit">
				<input type="image" src="${resource(dir: 'images', file: 'submit_hover.png')}" id="submit1" value="Sign In">
				<input type="image" src="${resource(dir: 'images', file: 'submit.png')}" id="submit2" value="Sign In">
			</div>
</g:form>

			

		</div>

		<div id="wrapperbottom">
		<center><div class="quisioner"><a href="login">Login to SIJAD</a></div></center>	
		</div>
		
		<div id="powered">
		<p>Powered by <a href="#">Fisika ICT</a></p>
		</div>
	</div>

</body>
</html>