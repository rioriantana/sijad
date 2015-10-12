
<%@ page import="sijad.Dosen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dosen.label', default: 'Dosen')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-dosen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-dosen" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nidn" title="${message(code: 'dosen.nidn.label', default: 'Nidn')}" />
					
						<g:sortableColumn property="nama" title="${message(code: 'dosen.nama.label', default: 'Nama')}" />
					
						<g:sortableColumn property="golongan" title="${message(code: 'dosen.golongan.label', default: 'Golongan')}" />
					
						<g:sortableColumn property="jabatan" title="${message(code: 'dosen.jabatan.label', default: 'Jabatan')}" />
					
						<g:sortableColumn property="role" title="${message(code: 'dosen.role.label', default: 'Role')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'dosen.password.label', default: 'Password')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${dosenInstanceList}" status="i" var="dosenInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${dosenInstance.id}">${fieldValue(bean: dosenInstance, field: "nidn")}</g:link></td>
					
						<td>${fieldValue(bean: dosenInstance, field: "nama")}</td>
					
						<td>${fieldValue(bean: dosenInstance, field: "golongan")}</td>
					
						<td>${fieldValue(bean: dosenInstance, field: "jabatan")}</td>
					
						<td>${fieldValue(bean: dosenInstance, field: "role")}</td>
					
						<td>${fieldValue(bean: dosenInstance, field: "password")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${dosenInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
