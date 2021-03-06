
<%@ page import="sijad.Quisioner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'quisioner.label', default: 'Quisioner')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-quisioner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" controller="user" action="logout">Logout</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="print" target="_blank">Cetak</g:link></li>
			</ul>
		</div>
		<div id="list-quisioner" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="quisioner.dosen.label" default="Dosen" /></th>
					
						<th><g:message code="quisioner.mataKuliah.label" default="Mata Kuliah" /></th>
					
						<g:sortableColumn property="mhsSemester" title="${message(code: 'quisioner.mhsSemester.label', default: 'Mhs Semester')}" />
					
						<g:sortableColumn property="p1" title="${message(code: 'quisioner.p1.label', default: 'NIM')}" />

						<g:sortableColumn property="p1" title="${message(code: 'quisioner.p1.label', default: 'Detail')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${quisionerInstanceList}" status="i" var="quisionerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: quisionerInstance, field: "dosen")}</td>
					
						<td>${fieldValue(bean: quisionerInstance, field: "mataKuliah")}</td>
					
						<td>${fieldValue(bean: quisionerInstance, field: "mhsSemester")}</td>
					
						<td>${fieldValue(bean: quisionerInstance, field: "nim")}</td>

						<td><g:link action="show" id="${quisionerInstance.id}">Show Detail</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${quisionerInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
