
<%@ page import="sijad.MataKuliah" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mataKuliah.label', default: 'MataKuliah')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mataKuliah" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mataKuliah" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="kodeMakul" title="${message(code: 'mataKuliah.kodeMakul.label', default: 'Kode Makul')}" />
					
						<g:sortableColumn property="namaMakul" title="${message(code: 'mataKuliah.namaMakul.label', default: 'Nama Makul')}" />
					
						<g:sortableColumn property="jumlahSKS" title="${message(code: 'mataKuliah.jumlahSKS.label', default: 'Jumlah SKS')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mataKuliahInstanceList}" status="i" var="mataKuliahInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mataKuliahInstance.id}">${fieldValue(bean: mataKuliahInstance, field: "kodeMakul")}</g:link></td>
					
						<td>${fieldValue(bean: mataKuliahInstance, field: "namaMakul")}</td>
					
						<td>${fieldValue(bean: mataKuliahInstance, field: "jumlahSKS")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mataKuliahInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
