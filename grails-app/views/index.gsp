
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fafafa;
				margin-top: 0px;
				width: 15em;
				float: left;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 1em;
				list-style-type: none;
				margin-bottom: 0.6em;
			}

			#status li {
				line-height: 1.3;
				padding-top: 15px;
				padding-left: 1em;
				height: 35px;
			}

			#status li:hover {
				margin-right: 0px;
				color: #f0f0f0;
				background-color: #E8A60C;
			}
			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<ul>
				<li><g:link >Dashboard</g:link></li>
				<li><g:link class="create" controller="jurnal">Jurnal</g:link></li>
				<li><g:link class="create" controller="prosiding">Prosiding</g:link></li>
				<li><g:link class="create" controller="penelitian">Penelitian</g:link></li>
				<li><g:link class="create" controller="pengabdianMasyarakat">Pengabdian Masyarakat</g:link></li>
				<li><g:link class="create" controller="user" action="logout">Logout</g:link></li>
			</ul>
			
		</div>
		<div id="page-body" role="main">
			<h1>Welcome to Si JAD</h1>
			<p>Si Jad adalah Sistem Informasi Kinerja Dosen Fisika yang bertujuan untuk memonitoring kinerja dosen Program Studi Fisika FMIPA UNS. Si Jad dibuat untuk meningkatkan kinerja antar dosen baik di dalam UNS maupun di luar UNS. Si Jad berisi tentang pencapaian yang sudah dilaksanakan oleh Dosen Fisika FMIPA UNS dari tahun ke tahun.</p>

			<div id="controller-list" role="navigation">
				<h2>Informasi mengenai prestasi anda :</h2>
				<ul>
						<li><g:link class="create" controller="jurnal">Jurnal</g:link></li>
						<li><g:link class="create" controller="prosiding">Prosiding</g:link></li>
						<li><g:link class="create" controller="penelitian">Penelitian</g:link></li>
						<li><g:link class="create" controller="pengabdianMasyarakat">Pengabdian Masyarakat</g:link></li>
						<li><g:link class="create" controller="user" action="logout">Logout</g:link></li>
				</ul>
			</div>
		</div>
	</body>
</html>
