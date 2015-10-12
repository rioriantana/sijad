
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
			
				<g:if test="${jurnalInstance?.namaKetua}">
				<li class="fieldcontain">
					<span id="namaKetua-label" class="property-label"><g:message code="jurnal.namaKetua.label" default="Nama Ketua" /></span>
					
						<span class="property-value" aria-labelledby="namaKetua-label"><g:fieldValue bean="${jurnalInstance}" field="namaKetua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.namaAnggota1}">
				<li class="fieldcontain">
					<span id="namaAnggota1-label" class="property-label"><g:message code="jurnal.namaAnggota1.label" default="Nama Anggota1" /></span>
					
						<span class="property-value" aria-labelledby="namaAnggota1-label"><g:fieldValue bean="${jurnalInstance}" field="namaAnggota1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.namaAnggota2}">
				<li class="fieldcontain">
					<span id="namaAnggota2-label" class="property-label"><g:message code="jurnal.namaAnggota2.label" default="Nama Anggota2" /></span>
					
						<span class="property-value" aria-labelledby="namaAnggota2-label"><g:fieldValue bean="${jurnalInstance}" field="namaAnggota2"/></span>
					
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
			
				<g:if test="${jurnalInstance?.tagDosen1}">
				<li class="fieldcontain">
					<span id="tagDosen1-label" class="property-label"><g:message code="jurnal.tagDosen1.label" default="Tag Dosen1" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen1-label"><g:link controller="dosen" action="show" id="${jurnalInstance?.tagDosen1?.id}">${jurnalInstance?.tagDosen1?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.tagDosen2}">
				<li class="fieldcontain">
					<span id="tagDosen2-label" class="property-label"><g:message code="jurnal.tagDosen2.label" default="Tag Dosen2" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen2-label"><g:link controller="dosen" action="show" id="${jurnalInstance?.tagDosen2?.id}">${jurnalInstance?.tagDosen2?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.tagDosen3}">
				<li class="fieldcontain">
					<span id="tagDosen3-label" class="property-label"><g:message code="jurnal.tagDosen3.label" default="Tag Dosen3" /></span>
					
						<span class="property-value" aria-labelledby="tagDosen3-label"><g:link controller="dosen" action="show" id="${jurnalInstance?.tagDosen3?.id}">${jurnalInstance?.tagDosen3?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${jurnalInstance?.alamatWebJurnal}">
				<li class="fieldcontain">
					<span id="alamatWebJurnal-label" class="property-label"><g:message code="jurnal.alamatWebJurnal.label" default="Alamat Web Jurnal" /></span>
					
						<span class="property-value" aria-labelledby="alamatWebJurnal-label"><g:fieldValue bean="${jurnalInstance}" field="alamatWebJurnal"/></span>
					
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
