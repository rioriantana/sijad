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

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'namaKetua', 'error')} ">
	<label for="namaKetua">
		<g:message code="prosiding.namaKetua.label" default="Nama Ketua" />
		
	</label>
	<g:textField name="namaKetua" value="${prosidingInstance?.namaKetua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'namaAnggota1', 'error')} ">
	<label for="namaAnggota1">
		<g:message code="prosiding.namaAnggota1.label" default="Nama Anggota1" />
		
	</label>
	<g:textField name="namaAnggota1" value="${prosidingInstance?.namaAnggota1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'namaAnggota2', 'error')} ">
	<label for="namaAnggota2">
		<g:message code="prosiding.namaAnggota2.label" default="Nama Anggota2" />
		
	</label>
	<g:textField name="namaAnggota2" value="${prosidingInstance?.namaAnggota2}"/>

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

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'tagDosen1', 'error')} ">
	<label for="tagDosen1">
		<g:message code="prosiding.tagDosen1.label" default="Tag Dosen1" />
		
	</label>
	<g:select id="tagDosen1" name="tagDosen1.id" from="${sijad.Dosen.list()}" optionKey="id" value="${prosidingInstance?.tagDosen1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'tagDosen2', 'error')} ">
	<label for="tagDosen2">
		<g:message code="prosiding.tagDosen2.label" default="Tag Dosen2" />
		
	</label>
	<g:select id="tagDosen2" name="tagDosen2.id" from="${sijad.Dosen.list()}" optionKey="id" value="${prosidingInstance?.tagDosen2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'tagDosen3', 'error')} ">
	<label for="tagDosen3">
		<g:message code="prosiding.tagDosen3.label" default="Tag Dosen3" />
		
	</label>
	<g:select id="tagDosen3" name="tagDosen3.id" from="${sijad.Dosen.list()}" optionKey="id" value="${prosidingInstance?.tagDosen3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: prosidingInstance, field: 'alamatWebProsiding', 'error')} ">
	<label for="alamatWebProsiding">
		<g:message code="prosiding.alamatWebProsiding.label" default="Alamat Web Prosiding" />
		
	</label>
	<g:textField name="alamatWebProsiding" value="${prosidingInstance?.alamatWebProsiding}"/>

</div>

