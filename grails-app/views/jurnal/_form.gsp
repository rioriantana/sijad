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

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'namaKetua', 'error')} ">
	<label for="namaKetua">
		<g:message code="jurnal.namaKetua.label" default="Nama Ketua" />
		
	</label>
	<g:textField name="namaKetua" value="${jurnalInstance?.namaKetua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'namaAnggota1', 'error')} ">
	<label for="namaAnggota1">
		<g:message code="jurnal.namaAnggota1.label" default="Nama Anggota1" />
		
	</label>
	<g:textField name="namaAnggota1" value="${jurnalInstance?.namaAnggota1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'namaAnggota2', 'error')} ">
	<label for="namaAnggota2">
		<g:message code="jurnal.namaAnggota2.label" default="Nama Anggota2" />
		
	</label>
	<g:textField name="namaAnggota2" value="${jurnalInstance?.namaAnggota2}"/>

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


<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'tagDosen2', 'error')} ">
	<label for="tagDosen2">
		<g:message code="jurnal.tagDosen2.label" default="Tandai Dosen" />
		
	</label>
	<g:select id="tagDosen2" name="tagDosen2.id" from="${sijad.Dosen.list()}" optionKey="id" value="${jurnalInstance?.tagDosen2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'tagDosen3', 'error')} ">
	<label for="tagDosen3">
		<g:message code="jurnal.tagDosen3.label" default="Tandai Dosen" />
		
	</label>
	<g:select id="tagDosen3" name="tagDosen3.id" from="${sijad.Dosen.list()}" optionKey="id" value="${jurnalInstance?.tagDosen3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: jurnalInstance, field: 'alamatWebJurnal', 'error')} ">
	<label for="alamatWebJurnal">
		<g:message code="jurnal.alamatWebJurnal.label" default="Alamat Web Jurnal" />
		
	</label>
	<g:textField name="alamatWebJurnal" value="${jurnalInstance?.alamatWebJurnal}"/>

</div>

