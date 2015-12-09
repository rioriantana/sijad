<%@ page import="sijad.Prosiding" %>



<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'judul', 'error')} ">
	<label for="judul">
		<g:message code="prosiding.judul.label" default="Judul" />
		
	</label>
	<g:textField name="judul" value="${prosidingInstance?.judul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'namaConference', 'error')} ">
	<label for="namaConference">
		<g:message code="prosiding.namaConference.label" default="Nama Conference" />
		
	</label>
	<g:textField name="namaConference" value="${prosidingInstance?.namaConference}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'kategoriConference', 'error')} ">
	<label for="kategoriConference">
		<g:message code="prosiding.kategoriConference.label" default="Kategori Conference" />
		
	</label>
	<g:textField name="kategoriConference" value="${prosidingInstance?.kategoriConference}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'namaAnggota', 'error')} ">
	<label for="namaAnggota">
		<g:message code="prosiding.namaAnggota.label" default="Nama Anggota" />
		
	</label>
	<g:textField name="namaAnggota" value="${prosidingInstance?.namaAnggota}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'tahun', 'error')} ">
	<label for="tahun">
		<g:message code="prosiding.tahun.label" default="Tahun" />
		
	</label>
	<g:textField name="tahun" value="${prosidingInstance?.tahun}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'halaman', 'error')} ">
	<label for="halaman">
		<g:message code="prosiding.halaman.label" default="Halaman" />
		
	</label>
	<g:textField name="halaman" value="${prosidingInstance?.halaman}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'alamatWebProsiding', 'error')} ">
	<label for="alamatWebProsiding">
		<g:message code="prosiding.alamatWebProsiding.label" default="Alamat Web Prosiding" />
		
	</label>
	<g:textField name="alamatWebProsiding" value="${prosidingInstance?.alamatWebProsiding}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'dosens', 'error')} ">
	<label for="dosens">
		<g:message code="prosiding.dosens.label" default="Dosens" />
		
	</label>
	<g:select name="dosens" from="${sijad.Dosen.list()}" multiple="multiple" optionKey="id" size="5" value="${prosidingInstance?.dosens*.id}" class="many-to-many"/>

</div>

