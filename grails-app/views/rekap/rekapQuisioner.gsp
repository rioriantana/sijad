<%@ page import="sijad.Quisioner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'prosiding.label', default: 'Rekap Quisioner')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#create-prosiding" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="create-prosiding" class="content scaffold-create" role="main">
			<h1>Rekap Quisioner</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${prosidingInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${prosidingInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:quisionerInstace, action:'rekapQuisioner']" >
				<fieldset class="form">
					<strong>Tahun Akademik : </strong>
					<g:datePicker name="tahunAkademik" precision="year" value="${new Date()}" default="none"  relativeYears="[-10..10]" default="${new Date()}" />
					<g:select id="dosen" name="dosen" from="${sijad.Dosen.list()}" optionKey="id" value="${quisionerInstance?.dosen?.id}" class="many-to-one" noSelection="['null': '']"/>
					<g:submitButton name="cek" class="save" value="Buka" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
