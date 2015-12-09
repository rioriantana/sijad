
<%@ page import="sijad.Jurnal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jurnal.label', default: 'Jurnal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-jurnal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-jurnal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list jurnal">
			
				<g:if test="${jurnalInstance?.judul}">
				<li class="fieldcontain">
					<span id="judul-label" class="property-label"><g:message code="jurnal.judul.label" default="Judul" /></span>
					
						<span class="property-value" aria-labelledby="judul-label"><g:fieldValue bean="${jurnalInstance}" field="judul"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.namaJurnal}">
				<li class="fieldcontain">
					<span id="namaJurnal-label" class="property-label"><g:message code="jurnal.namaJurnal.label" default="Nama Jurnal" /></span>
					
						<span class="property-value" aria-labelledby="namaJurnal-label"><g:fieldValue bean="${jurnalInstance}" field="namaJurnal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.kategoriJurnal}">
				<li class="fieldcontain">
					<span id="kategoriJurnal-label" class="property-label"><g:message code="jurnal.kategoriJurnal.label" default="Kategori Jurnal" /></span>
					
						<span class="property-value" aria-labelledby="kategoriJurnal-label"><g:fieldValue bean="${jurnalInstance}" field="kategoriJurnal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.namaPenulis}">
				<li class="fieldcontain">
					<span id="namaPenulis-label" class="property-label"><g:message code="jurnal.namaPenulis.label" default="Nama Penulis" /></span>
					
						<span class="property-value" aria-labelledby="namaPenulis-label"><g:fieldValue bean="${jurnalInstance}" field="namaPenulis"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.tahun}">
				<li class="fieldcontain">
					<span id="tahun-label" class="property-label"><g:message code="jurnal.tahun.label" default="Tahun" /></span>
					
						<span class="property-value" aria-labelledby="tahun-label"><g:fieldValue bean="${jurnalInstance}" field="tahun"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="jurnal.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${jurnalInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.nomor}">
				<li class="fieldcontain">
					<span id="nomor-label" class="property-label"><g:message code="jurnal.nomor.label" default="Nomor" /></span>
					
						<span class="property-value" aria-labelledby="nomor-label"><g:fieldValue bean="${jurnalInstance}" field="nomor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.halaman}">
				<li class="fieldcontain">
					<span id="halaman-label" class="property-label"><g:message code="jurnal.halaman.label" default="Halaman" /></span>
					
						<span class="property-value" aria-labelledby="halaman-label"><g:fieldValue bean="${jurnalInstance}" field="halaman"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.alamatWebJurnal}">
				<li class="fieldcontain">
					<span id="alamatWebJurnal-label" class="property-label"><g:message code="jurnal.alamatWebJurnal.label" default="Alamat Web Jurnal" /></span>
					
						<span class="property-value" aria-labelledby="alamatWebJurnal-label"><g:fieldValue bean="${jurnalInstance}" field="alamatWebJurnal"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.dosens}">
				<li class="fieldcontain">
					<span id="dosens-label" class="property-label"><g:message code="jurnal.dosens.label" default="Dosens" /></span>
					
						<g:each in="${jurnalInstance.dosens}" var="d">
						<span class="property-value" aria-labelledby="dosens-label"><g:link controller="dosen" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:jurnalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${jurnalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
