
<%@ page import="sijad.Prosiding" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prosiding.label', default: 'Prosiding')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-prosiding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-prosiding" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list prosiding">
			
				<g:if test="${prosidingInstance?.judul}">
				<li class="fieldcontain">
					<span id="judul-label" class="property-label"><g:message code="prosiding.judul.label" default="Judul" /></span>
					
						<span class="property-value" aria-labelledby="judul-label"><g:fieldValue bean="${prosidingInstance}" field="judul"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.namaConference}">
				<li class="fieldcontain">
					<span id="namaConference-label" class="property-label"><g:message code="prosiding.namaConference.label" default="Nama Conference" /></span>
					
						<span class="property-value" aria-labelledby="namaConference-label"><g:fieldValue bean="${prosidingInstance}" field="namaConference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.kategoriConference}">
				<li class="fieldcontain">
					<span id="kategoriConference-label" class="property-label"><g:message code="prosiding.kategoriConference.label" default="Kategori Conference" /></span>
					
						<span class="property-value" aria-labelledby="kategoriConference-label"><g:fieldValue bean="${prosidingInstance}" field="kategoriConference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.namaKetua}">
				<li class="fieldcontain">
					<span id="namaKetua-label" class="property-label"><g:message code="prosiding.namaKetua.label" default="Nama Ketua" /></span>
					
						<span class="property-value" aria-labelledby="namaKetua-label"><g:fieldValue bean="${prosidingInstance}" field="namaKetua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.namaAnggota1}">
				<li class="fieldcontain">
					<span id="namaAnggota1-label" class="property-label"><g:message code="prosiding.namaAnggota1.label" default="Nama Anggota1" /></span>
					
						<span class="property-value" aria-labelledby="namaAnggota1-label"><g:fieldValue bean="${prosidingInstance}" field="namaAnggota1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.namaAnggota2}">
				<li class="fieldcontain">
					<span id="namaAnggota2-label" class="property-label"><g:message code="prosiding.namaAnggota2.label" default="Nama Anggota2" /></span>
					
						<span class="property-value" aria-labelledby="namaAnggota2-label"><g:fieldValue bean="${prosidingInstance}" field="namaAnggota2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.tahun}">
				<li class="fieldcontain">
					<span id="tahun-label" class="property-label"><g:message code="prosiding.tahun.label" default="Tahun" /></span>
					
						<span class="property-value" aria-labelledby="tahun-label"><g:fieldValue bean="${prosidingInstance}" field="tahun"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.halaman}">
				<li class="fieldcontain">
					<span id="halaman-label" class="property-label"><g:message code="prosiding.halaman.label" default="Halaman" /></span>
					
						<span class="property-value" aria-labelledby="halaman-label"><g:fieldValue bean="${prosidingInstance}" field="halaman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.tagDosen1}">
				<li class="fieldcontain">
					<span id="tagDosen1-label" class="property-label"><g:message code="prosiding.tagDosen1.label" default="Tag Dosen1" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen1-label"><g:link controller="dosen" action="show" id="${prosidingInstance?.tagDosen1?.id}">${prosidingInstance?.tagDosen1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.tagDosen2}">
				<li class="fieldcontain">
					<span id="tagDosen2-label" class="property-label"><g:message code="prosiding.tagDosen2.label" default="Tag Dosen2" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen2-label"><g:link controller="dosen" action="show" id="${prosidingInstance?.tagDosen2?.id}">${prosidingInstance?.tagDosen2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.tagDosen3}">
				<li class="fieldcontain">
					<span id="tagDosen3-label" class="property-label"><g:message code="prosiding.tagDosen3.label" default="Tag Dosen3" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen3-label"><g:link controller="dosen" action="show" id="${prosidingInstance?.tagDosen3?.id}">${prosidingInstance?.tagDosen3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${prosidingInstance?.alamatWebProsiding}">
				<li class="fieldcontain">
					<span id="alamatWebProsiding-label" class="property-label"><g:message code="prosiding.alamatWebProsiding.label" default="Alamat Web Prosiding" /></span>
					
						<span class="property-value" aria-labelledby="alamatWebProsiding-label"><g:fieldValue bean="${prosidingInstance}" field="alamatWebProsiding"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:prosidingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${prosidingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
