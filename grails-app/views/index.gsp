<%@ page import="org.grails.plugins.google.visualization.formatter.BarFormatter" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>		
		<style type="text/css" media="screen">
			#status {
				border-right: 2px solid #f0f0f0;
				margin-top: 20px;
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
				height: 38px;
			}
			#status li:hover {
				margin-right: 0px;
				color: #f0f0f0;
				background-color: #F7C859;
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
				<li><g:link class="create" controller="rekap" action="rekapQuisioner">Rekap Quisioner</g:link></li>
				<li><g:link class="create" controller="user" action="logout">Logout</g:link></li>
			</ul>
			
		</div>
		<div id="page-body" role="main">
			<h1>Sedikit tentang SIJAD</h1>
			<p>SIJAD adalah Sistem Informasi Kinerja Dosen Fisika yang bertujuan untuk memonitoring kinerja dosen Program Studi Fisika FMIPA UNS. SIJAD dibuat untuk meningkatkan kinerja antar dosen baik di dalam UNS maupun di luar UNS. SIJAD berisi tentang pencapaian yang sudah dilaksanakan oleh Dosen Fisika FMIPA UNS dari tahun ke tahun.</p>

			<div id="controller-list" role="navigation">
				<h2>Informasi mengenai prestasi anda :</h2>
			</div>

<%

		def defineDataTypeOfVariables = [['string', 'Task'], ['number', 'Pengabdian Masyarakat'], ['number', 'Jurnal'], ['number', 'Penelitian'], ['number', 'Prosiding']]
		def salesExpenses = [ ['2012', '100', '60', '200', '65'],['2013', '80', '50', '85', '59'],['2014', '125', '90', '112', '91'],['2015', '155', '120', '130', '95']]
		def judulJurnal = [['string', 'Task'], ['number', 'Persentase']]
		def dataDosenJurnal = [['Iwan Yahya', 30],['Nuryani', 24],['Suparmi',15],['Ahmad Marzuki', 21]]
       
%>
<gvisualization:columnCoreChart elementId="barchart"   hAxis= "${new Expando([slantedTextAngle:'180',textStyle:new Expando(color:'black', fontName:'Arial', fontSize:14)])}"  bar= "${new Expando(groupWidth:'40%')}" chartArea="${new Expando(top:70, width:'100%' , height:'60%', left:50,bottom:150)}" title="Company Performance"  titleTextStyle="${ new Expando([color:'black', fontName:'Arial', fontSize:14])}" width="${700}" height="${400}" columns="${defineDataTypeOfVariables}" data="${salesExpenses}" />
 
<div id="barchart"></div>
                    


      <gvisualization:columnCoreChart elementId="barchart"   hAxis= "${new Expando([slantedTextAngle:'180',textStyle:new Expando(color:'black', fontName:'Arial', fontSize:14)])}"  bar= "${new Expando(groupWidth:'80%')}" chartArea="${new Expando(top:70, width:'100%' , height:'60%', left:150,bottom:150)}" title="Prestasi Dosen 4 Tahun Terahir"  titleTextStyle="${ new Expando([color:'black', fontName:'Arial', fontSize:14])}" width="${900}" height="${400}" columns="${defineDataTypeOfVariables}" data="${salesExpenses}" />
 
		<div id="barchart"></div>
		<table width="100%" align="center">
		<tr>
		<td>
		<gvisualization:pieCoreChart elementId="piechart1" title="Prosentase Publish Jurnal Tahun 2015" width="${450}" height="${300}" columns="${judulJurnal}" data="${dataDosenJurnal}" />
 
		<div id="piechart1"></div>
		</td>
		<td>
		<gvisualization:pieCoreChart elementId="piechart2" title="Prosentase Publish Prosiding Tahun 2015" width="${450}" height="${300}" columns="${judulJurnal}" data="${dataDosenJurnal}" />
 
		<div id="piechart2"></div>
		</td>
		</tr>
		<tr>
		<td>
		<gvisualization:pieCoreChart elementId="piechart3" title="Prosentase Publish Penelitian Tahun 2015" width="${450}" height="${300}" columns="${judulJurnal}" data="${dataDosenJurnal}" />
 
		<div id="piechart3"></div>
		</td>
		<td>
		<gvisualization:pieCoreChart elementId="piechart4" title="Prosentase Publish Pengabdian Masyarakat Tahun 2015" width="${450}" height="${300}" columns="${judulJurnal}" data="${dataDosenJurnal}" />
 
		<div id="piechart4"></div>
		</td>
		</tr>
		</table>


		</div>
	</body>
</html>
