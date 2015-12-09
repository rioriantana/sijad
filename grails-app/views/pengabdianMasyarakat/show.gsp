
<%@ page import="sijad.PengabdianMasyarakat" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pengabdianMasyarakat.label', default: 'PengabdianMasyarakat')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pengabdianMasyarakat" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pengabdianMasyarakat" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pengabdianMasyarakat">
			
				<g:if test="${pengabdianMasyarakatInstance?.judul}">
				<li class="fieldcontain">
					<span id="judul-label" class="property-label"><g:message code="pengabdianMasyarakat.judul.label" default="Judul" /></span>
					
						<span class="property-value" aria-labelledby="judul-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="judul"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.tahunBerjalan}">
				<li class="fieldcontain">
					<span id="tahunBerjalan-label" class="property-label"><g:message code="pengabdianMasyarakat.tahunBerjalan.label" default="Tahun Berjalan" /></span>
					
						<span class="property-value" aria-labelledby="tahunBerjalan-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="tahunBerjalan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.sumberDana}">
				<li class="fieldcontain">
					<span id="sumberDana-label" class="property-label"><g:message code="pengabdianMasyarakat.sumberDana.label" default="Sumber Dana" /></span>
					
						<span class="property-value" aria-labelledby="sumberDana-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="sumberDana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.jumlahDana}">
				<li class="fieldcontain">
					<span id="jumlahDana-label" class="property-label"><g:message code="pengabdianMasyarakat.jumlahDana.label" default="Jumlah Dana" /></span>
					
						<span class="property-value" aria-labelledby="jumlahDana-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="jumlahDana"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.namaKetua}">
				<li class="fieldcontain">
					<span id="namaKetua-label" class="property-label"><g:message code="pengabdianMasyarakat.namaKetua.label" default="Nama Ketua" /></span>
					
						<span class="property-value" aria-labelledby="namaKetua-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="namaKetua"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.namaAnggota}">
				<li class="fieldcontain">
					<span id="namaAnggota-label" class="property-label"><g:message code="pengabdianMasyarakat.namaAnggota.label" default="Nama Anggota" /></span>
					
						<span class="property-value" aria-labelledby="namaAnggota-label"><g:fieldValue bean="${pengabdianMasyarakatInstance}" field="namaAnggota"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pengabdianMasyarakatInstance?.dosens}">
				<li class="fieldcontain">
					<span id="dosens-label" class="property-label"><g:message code="pengabdianMasyarakat.dosens.label" default="Dosens" /></span>
					
						<g:each in="${pengabdianMasyarakatInstance.dosens}" var="d">
						<span class="property-value" aria-labelledby="dosens-label"><g:link controller="dosen" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pengabdianMasyarakatInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pengabdianMasyarakatInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
