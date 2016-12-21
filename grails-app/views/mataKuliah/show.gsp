
<%@ page import="sijad.MataKuliah" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mataKuliah.label', default: 'MataKuliah')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mataKuliah" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mataKuliah" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mataKuliah">
			
				<g:if test="${mataKuliahInstance?.kodeMakul}">
				<li class="fieldcontain">
					<span id="kodeMakul-label" class="property-label"><g:message code="mataKuliah.kodeMakul.label" default="Kode Makul" /></span>
					
						<span class="property-value" aria-labelledby="kodeMakul-label"><g:fieldValue bean="${mataKuliahInstance}" field="kodeMakul"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mataKuliahInstance?.namaMakul}">
				<li class="fieldcontain">
					<span id="namaMakul-label" class="property-label"><g:message code="mataKuliah.namaMakul.label" default="Nama Makul" /></span>
					
						<span class="property-value" aria-labelledby="namaMakul-label"><g:fieldValue bean="${mataKuliahInstance}" field="namaMakul"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mataKuliahInstance?.jumlahSKS}">
				<li class="fieldcontain">
					<span id="jumlahSKS-label" class="property-label"><g:message code="mataKuliah.jumlahSKS.label" default="Jumlah SKS" /></span>
					
						<span class="property-value" aria-labelledby="jumlahSKS-label"><g:fieldValue bean="${mataKuliahInstance}" field="jumlahSKS"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mataKuliahInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mataKuliahInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
