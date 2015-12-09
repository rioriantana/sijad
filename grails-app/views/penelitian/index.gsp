
<%@ page import="sijad.Penelitian" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'penelitian.label', default: 'Penelitian')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-penelitian" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-penelitian" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="judul" title="${message(code: 'penelitian.judul.label', default: 'Judul')}" />
					
						<g:sortableColumn property="tahunBerjalan" title="${message(code: 'penelitian.tahunBerjalan.label', default: 'Tahun Berjalan')}" />
					
						<g:sortableColumn property="sumberDana" title="${message(code: 'penelitian.sumberDana.label', default: 'Sumber Dana')}" />
					
						<g:sortableColumn property="jumlahDana" title="${message(code: 'penelitian.jumlahDana.label', default: 'Jumlah Dana')}" />
					
						<g:sortableColumn property="namaKetua" title="${message(code: 'penelitian.namaKetua.label', default: 'Nama Ketua')}" />
					
						<g:sortableColumn property="namaAnggota" title="${message(code: 'penelitian.namaAnggota.label', default: 'Nama Anggota')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${penelitianInstanceList}" status="i" var="penelitianInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${penelitianInstance.id}">${fieldValue(bean: penelitianInstance, field: "judul")}</g:link></td>
					
						<td>${fieldValue(bean: penelitianInstance, field: "tahunBerjalan")}</td>
					
						<td>${fieldValue(bean: penelitianInstance, field: "sumberDana")}</td>
					
						<td>${fieldValue(bean: penelitianInstance, field: "jumlahDana")}</td>
					
						<td>${fieldValue(bean: penelitianInstance, field: "namaKetua")}</td>
					
						<td>${fieldValue(bean: penelitianInstance, field: "namaAnggota")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${penelitianInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
