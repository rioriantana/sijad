
<%@ page import="sijad.Prosiding" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prosiding.label', default: 'Prosiding')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-prosiding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-prosiding" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="judul" title="${message(code: 'prosiding.judul.label', default: 'Judul')}" />
					
						<g:sortableColumn property="namaConference" title="${message(code: 'prosiding.namaConference.label', default: 'Nama Conference')}" />
					
						<g:sortableColumn property="kategoriConference" title="${message(code: 'prosiding.kategoriConference.label', default: 'Kategori Conference')}" />
					
						<g:sortableColumn property="namaKetua" title="${message(code: 'prosiding.namaKetua.label', default: 'Nama Ketua')}" />
					
						<g:sortableColumn property="namaAnggota1" title="${message(code: 'prosiding.namaAnggota1.label', default: 'Nama Anggota1')}" />
					
						<g:sortableColumn property="namaAnggota2" title="${message(code: 'prosiding.namaAnggota2.label', default: 'Nama Anggota2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${prosidingInstanceList}" status="i" var="prosidingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${prosidingInstance.id}">${fieldValue(bean: prosidingInstance, field: "judul")}</g:link></td>
					
						<td>${fieldValue(bean: prosidingInstance, field: "namaConference")}</td>
					
						<td>${fieldValue(bean: prosidingInstance, field: "kategoriConference")}</td>
					
						<td>${fieldValue(bean: prosidingInstance, field: "namaKetua")}</td>
					
						<td>${fieldValue(bean: prosidingInstance, field: "namaAnggota1")}</td>
					
						<td>${fieldValue(bean: prosidingInstance, field: "namaAnggota2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${prosidingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
