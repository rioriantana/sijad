
<%@ page import="sijad.Quisioner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quisioner.label', default: 'Quisioner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-quisioner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<!-- <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li> -->
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-quisioner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list quisioner">
			
				<g:if test="${quisionerInstance?.dosen}">
				<li class="fieldcontain">
					<span id="dosen-label" class="property-label"><g:message code="quisioner.dosen.label" default="Dosen" /></span>
					
						<span class="property-value" aria-labelledby="dosen-label">${quisionerInstance?.dosen?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.mataKuliah}">
				<li class="fieldcontain">
					<span id="mataKuliah-label" class="property-label"><g:message code="quisioner.mataKuliah.label" default="Mata Kuliah" /></span>
					
						<span class="property-value" aria-labelledby="mataKuliah-label">${quisionerInstance?.mataKuliah?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.mhsSemester}">
				<li class="fieldcontain">
					<span id="mhsSemester-label" class="property-label"><g:message code="quisioner.mhsSemester.label" default="Mhs Semester" /></span>
					
						<span class="property-value" aria-labelledby="mhsSemester-label"><g:fieldValue bean="${quisionerInstance}" field="mhsSemester"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p1}">
				<li class="fieldcontain">
					<span id="p1-label" class="property-label"><g:message code="quisioner.p1.label" default="Dosen memberikan silabi materi yang akan diajarkan" /></span>
					
						<span class="property-value" aria-labelledby="p1-label"><g:fieldValue bean="${quisionerInstance}" field="p1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p2}">
				<li class="fieldcontain">
					<span id="p2-label" class="property-label"><g:message code="quisioner.p2.label" default="Dosen memberikan manfaat terhadap materi yang diajarkan" /></span>
					
						<span class="property-value" aria-labelledby="p2-label"><g:fieldValue bean="${quisionerInstance}" field="p2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p3}">
				<li class="fieldcontain">
					<span id="p3-label" class="property-label"><g:message code="quisioner.p3.label" default="Dosen mempunyai rancangan perkuliahan, test dan tugas-tugas yang akan diberikan" /></span>
					
						<span class="property-value" aria-labelledby="p3-label"><g:fieldValue bean="${quisionerInstance}" field="p3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p4}">
				<li class="fieldcontain">
					<span id="p4-label" class="property-label"><g:message code="quisioner.p4.label" default="Dosen menyampaikan rencana penilaian(bobot nilai)" /></span>
					
						<span class="property-value" aria-labelledby="p4-label"><g:fieldValue bean="${quisionerInstance}" field="p4"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p5}">
				<li class="fieldcontain">
					<span id="p5-label" class="property-label"><g:message code="quisioner.p5.label" default="Sumber belajar yang ditunjuk mudah untuk ditemukan" /></span>
					
						<span class="property-value" aria-labelledby="p5-label"><g:fieldValue bean="${quisionerInstance}" field="p5"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p6}">
				<li class="fieldcontain">
					<span id="p6-label" class="property-label"><g:message code="quisioner.p6.label" default="Materi disajikan dengan bentuk yang menarik" /></span>
					
						<span class="property-value" aria-labelledby="p6-label"><g:fieldValue bean="${quisionerInstance}" field="p6"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p7}">
				<li class="fieldcontain">
					<span id="p7-label" class="property-label"><g:message code="quisioner.p7.label" default="Dosen memberikan garis besar materi yang harus dikuasai tiap tatap muka" /></span>
					
						<span class="property-value" aria-labelledby="p7-label"><g:fieldValue bean="${quisionerInstance}" field="p7"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p8}">
				<li class="fieldcontain">
					<span id="p8-label" class="property-label"><g:message code="quisioner.p8.label" default="Digunakan media yang merangsang mahasiswa untuk bertanya" /></span>
					
						<span class="property-value" aria-labelledby="p8-label"><g:fieldValue bean="${quisionerInstance}" field="p8"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p9}">
				<li class="fieldcontain">
					<span id="p9-label" class="property-label"><g:message code="quisioner.p9.label" default="Dosen menggunakan bahasa yang mudah dipahami mahasiswa" /></span>
					
						<span class="property-value" aria-labelledby="p9-label"><g:fieldValue bean="${quisionerInstance}" field="p9"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p10}">
				<li class="fieldcontain">
					<span id="p10-label" class="property-label"><g:message code="quisioner.p10.label" default="Mahasiswa diberi waktu untuk bertanya" /></span>
					
						<span class="property-value" aria-labelledby="p10-label"><g:fieldValue bean="${quisionerInstance}" field="p10"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p11}">
				<li class="fieldcontain">
					<span id="p11-label" class="property-label"><g:message code="quisioner.p11.label" default="Dosen memberikan waktu konsultasi diluar jam kuliah" /></span>
					
						<span class="property-value" aria-labelledby="p11-label"><g:fieldValue bean="${quisionerInstance}" field="p11"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p12}">
				<li class="fieldcontain">
					<span id="p12-label" class="property-label"><g:message code="quisioner.p12.label" default="Dosen tepat waktu dalam mengajar" /></span>
					
						<span class="property-value" aria-labelledby="p12-label"><g:fieldValue bean="${quisionerInstance}" field="p12"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p13}">
				<li class="fieldcontain">
					<span id="p13-label" class="property-label"><g:message code="quisioner.p13.label" default="Dosen selalu hadir memberikan kuliah" /></span>
					
						<span class="property-value" aria-labelledby="p13-label"><g:fieldValue bean="${quisionerInstance}" field="p13"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p14}">
				<li class="fieldcontain">
					<span id="p14-label" class="property-label"><g:message code="quisioner.p14.label" default="Dosen memantau kehadiran mahasiswa" /></span>
					
						<span class="property-value" aria-labelledby="p14-label"><g:fieldValue bean="${quisionerInstance}" field="p14"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p15}">
				<li class="fieldcontain">
					<span id="p15-label" class="property-label"><g:message code="quisioner.p15.label" default="Dosen memberi tugas yang terencana" /></span>
					
						<span class="property-value" aria-labelledby="p15-label"><g:fieldValue bean="${quisionerInstance}" field="p15"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p16}">
				<li class="fieldcontain">
					<span id="p16-label" class="property-label"><g:message code="quisioner.p16.label" default="Dosen memberi quis yang terencana" /></span>
					
						<span class="property-value" aria-labelledby="p16-label"><g:fieldValue bean="${quisionerInstance}" field="p16"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p17}">
				<li class="fieldcontain">
					<span id="p17-label" class="property-label"><g:message code="quisioner.p17.label" default="Dosen memberikan umpan balik terhadap tugas / ujian yang diberikan" /></span>
					
						<span class="property-value" aria-labelledby="p17-label"><g:fieldValue bean="${quisionerInstance}" field="p17"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p18}">
				<li class="fieldcontain">
					<span id="p18-label" class="property-label"><g:message code="quisioner.p18.label" default="Dosen menginformasikan hasil nilai tugas / ujian" /></span>
					
						<span class="property-value" aria-labelledby="p18-label"><g:fieldValue bean="${quisionerInstance}" field="p18"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p19}">
				<li class="fieldcontain">
					<span id="p19-label" class="property-label"><g:message code="quisioner.p19.label" default="Dosen memberikan materi silabi" /></span>
					
						<span class="property-value" aria-labelledby="p19-label"><g:fieldValue bean="${quisionerInstance}" field="p19"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.p20}">
				<li class="fieldcontain">
					<span id="p20-label" class="property-label"><g:message code="quisioner.p20.label" default="Dosen menepati rancangan perkuliahan yang telah disusun" /></span>
					
						<span class="property-value" aria-labelledby="p20-label"><g:fieldValue bean="${quisionerInstance}" field="p20"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${quisionerInstance?.tanggal}">
				<li class="fieldcontain">
					<span id="tanggal-label" class="property-label"><g:message code="quisioner.tanggal.label" default="Tanggal" /></span>
					
						<span class="property-value" aria-labelledby="tanggal-label"><g:formatDate date="${quisionerInstance?.tanggal}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:quisionerInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${quisionerInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
