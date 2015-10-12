
<%@ page import="sijad.Jurnal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'jurnal.label', default: 'Jurnal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-jurnal" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-jurnal" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="judul" title="${message(code: 'jurnal.judul.label', default: 'Judul')}" />
					
						<g:sortableColumn property="namaJurnal" title="${message(code: 'jurnal.namaJurnal.label', default: 'Nama Jurnal')}" />
					
						<g:sortableColumn property="kategoriJurnal" title="${message(code: 'jurnal.kategoriJurnal.label', default: 'Kategori Jurnal')}" />
					
						<g:sortableColumn property="namaKetua" title="${message(code: 'jurnal.namaKetua.label', default: 'Nama Ketua')}" />
					
						<g:sortableColumn property="namaAnggota1" title="${message(code: 'jurnal.namaAnggota1.label', default: 'Nama Anggota1')}" />
					
						<g:sortableColumn property="namaAnggota2" title="${message(code: 'jurnal.namaAnggota2.label', default: 'Nama Anggota2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jurnalInstanceList}" status="i" var="jurnalInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jurnalInstance.id}">${fieldValue(bean: jurnalInstance, field: "judul")}</g:link></td>
					
						<td>${fieldValue(bean: jurnalInstance, field: "namaJurnal")}</td>
					
						<td>${fieldValue(bean: jurnalInstance, field: "kategoriJurnal")}</td>
					
						<td>${fieldValue(bean: jurnalInstance, field: "namaKetua")}</td>
					
						<td>${fieldValue(bean: jurnalInstance, field: "namaAnggota1")}</td>
					
						<td>${fieldValue(bean: jurnalInstance, field: "namaAnggota2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${jurnalInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
