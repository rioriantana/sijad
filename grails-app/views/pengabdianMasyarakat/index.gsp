
<%@ page import="sijad.PengabdianMasyarakat" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pengabdianMasyarakat.label', default: 'PengabdianMasyarakat')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pengabdianMasyarakat" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pengabdianMasyarakat" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="judul" title="${message(code: 'pengabdianMasyarakat.judul.label', default: 'Judul')}" />
					
						<g:sortableColumn property="tahunBerjalan" title="${message(code: 'pengabdianMasyarakat.tahunBerjalan.label', default: 'Tahun Berjalan')}" />
					
						<g:sortableColumn property="sumberDana" title="${message(code: 'pengabdianMasyarakat.sumberDana.label', default: 'Sumber Dana')}" />
					
						<g:sortableColumn property="jumlahDana" title="${message(code: 'pengabdianMasyarakat.jumlahDana.label', default: 'Jumlah Dana')}" />
					
						<g:sortableColumn property="namaKetua" title="${message(code: 'pengabdianMasyarakat.namaKetua.label', default: 'Nama Ketua')}" />
					
						<g:sortableColumn property="namaAnggota1" title="${message(code: 'pengabdianMasyarakat.namaAnggota1.label', default: 'Nama Anggota1')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pengabdianMasyarakatInstanceList}" status="i" var="pengabdianMasyarakatInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pengabdianMasyarakatInstance.id}">${fieldValue(bean: pengabdianMasyarakatInstance, field: "judul")}</g:link></td>
					
						<td>${fieldValue(bean: pengabdianMasyarakatInstance, field: "tahunBerjalan")}</td>
					
						<td>${fieldValue(bean: pengabdianMasyarakatInstance, field: "sumberDana")}</td>
					
						<td>${fieldValue(bean: pengabdianMasyarakatInstance, field: "jumlahDana")}</td>
					
						<td>${fieldValue(bean: pengabdianMasyarakatInstance, field: "namaKetua")}</td>
					
						<td>${fieldValue(bean: pengabdianMasyarakatInstance, field: "namaAnggota1")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pengabdianMasyarakatInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
