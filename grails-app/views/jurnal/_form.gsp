<%@ page import="sijad.Jurnal" %>



<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'judul', 'error')} ">
	<label for="judul">
		<g:message code="jurnal.judul.label" default="Judul" />
		
	</label>
	<g:textField name="judul" value="${jurnalInstance?.judul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'namaJurnal', 'error')} ">
	<label for="namaJurnal">
		<g:message code="jurnal.namaJurnal.label" default="Nama Jurnal" />
		
	</label>
	<g:textField name="namaJurnal" value="${jurnalInstance?.namaJurnal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'kategoriJurnal', 'error')} ">
	<label for="kategoriJurnal">
		<g:message code="jurnal.kategoriJurnal.label" default="Kategori Jurnal" />
		
	</label>
	<g:select name="kategoriJurnal" from="${jurnalInstance.constraints.kategoriJurnal.inList}" value="${jurnalInstance?.kategoriJurnal}" valueMessagePrefix="jurnal.kategoriJurnal" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'namaPenulis', 'error')} ">
	<label for="namaPenulis">
		<g:message code="jurnal.namaPenulis.label" default="Nama Penulis" />
		
	</label>
	<g:textField name="namaPenulis" value="${jurnalInstance?.namaPenulis}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'tahun', 'error')} ">
	<label for="tahun">
		<g:message code="jurnal.tahun.label" default="Tahun" />
		
	</label>
	<g:textField name="tahun" value="${jurnalInstance?.tahun}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'volume', 'error')} ">
	<label for="volume">
		<g:message code="jurnal.volume.label" default="Volume" />
		
	</label>
	<g:textField name="volume" value="${jurnalInstance?.volume}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'nomor', 'error')} ">
	<label for="nomor">
		<g:message code="jurnal.nomor.label" default="Nomor" />
		
	</label>
	<g:textField name="nomor" value="${jurnalInstance?.nomor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'halaman', 'error')} ">
	<label for="halaman">
		<g:message code="jurnal.halaman.label" default="Halaman" />
		
	</label>
	<g:textField name="halaman" value="${jurnalInstance?.halaman}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'alamatWebJurnal', 'error')} ">
	<label for="alamatWebJurnal">
		<g:message code="jurnal.alamatWebJurnal.label" default="Alamat Web Jurnal" />
		
	</label>
	<g:textField name="alamatWebJurnal" value="${jurnalInstance?.alamatWebJurnal}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'dosens', 'error')} ">
	<label for="dosens">
		<g:message code="jurnal.dosens.label" default="Dosens" />
		
	</label>
	<g:select name="dosens" from="${sijad.Dosen.list()}" multiple="multiple" optionKey="id" size="5" value="${jurnalInstance?.dosens*.id}" class="many-to-many"/>

</div>

