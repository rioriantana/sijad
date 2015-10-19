
<%@ page import="sijad.Dosen" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dosen.label', default: 'Dosen')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-dosen" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-dosen" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list dosen">
			
				<g:if test="${dosenInstance?.nidn}">
				<li class="fieldcontain">
					<span id="nidn-label" class="property-label"><g:message code="dosen.nidn.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="nidn-label"><g:fieldValue bean="${dosenInstance}" field="nidn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.nip}">
				<li class="fieldcontain">
					<span id="nip-label" class="property-label"><g:message code="dosen.nip.label" default="Nip" /></span>
					
						<span class="property-value" aria-labelledby="nip-label"><g:fieldValue bean="${dosenInstance}" field="nip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.nama}">
				<li class="fieldcontain">
					<span id="nama-label" class="property-label"><g:message code="dosen.nama.label" default="Nama" /></span>
					
						<span class="property-value" aria-labelledby="nama-label"><g:fieldValue bean="${dosenInstance}" field="nama"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.golongan}">
				<li class="fieldcontain">
					<span id="golongan-label" class="property-label"><g:message code="dosen.golongan.label" default="Golongan" /></span>
					
						<span class="property-value" aria-labelledby="golongan-label"><g:fieldValue bean="${dosenInstance}" field="golongan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.jabatan}">
				<li class="fieldcontain">
					<span id="jabatan-label" class="property-label"><g:message code="dosen.jabatan.label" default="Jabatan" /></span>
					
						<span class="property-value" aria-labelledby="jabatan-label"><g:fieldValue bean="${dosenInstance}" field="jabatan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="dosen.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${dosenInstance}" field="role"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${dosenInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="dosen.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${dosenInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:dosenInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${dosenInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
