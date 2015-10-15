<%@ page import="sijad.Dosen" %>



<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'nidn', 'error')} ">
	<label for="nidn">
		<g:message code="dosen.nidn.label" default="Nidn" />
		
	</label>
	<g:textField name="nidn" value="${dosenInstance?.nidn}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'nama', 'error')} ">
	<label for="nama">
		<g:message code="dosen.nama.label" default="Nama" />
		
	</label>
	<g:textField name="nama" value="${dosenInstance?.nama}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'golongan', 'error')} ">
	<label for="golongan">
		<g:message code="dosen.golongan.label" default="Golongan" />
		
	</label>
	<g:textField name="golongan" value="${dosenInstance?.golongan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'jabatan', 'error')} ">
	<label for="jabatan">
		<g:message code="dosen.jabatan.label" default="Jabatan" />
		
	</label>
	<g:select name="jabatan" from="${dosenInstance.constraints.jabatan.inList}" value="${dosenInstance?.jabatan}" valueMessagePrefix="dosen.jabatan" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="dosen.role.label" default="Role" />
		
	</label>
	<g:select name="role" from="${dosenInstance.constraints.role.inList}" value="${dosenInstance?.role}" valueMessagePrefix="dosen.role" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: dosenInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="dosen.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${dosenInstance?.password}"/>

</div>

