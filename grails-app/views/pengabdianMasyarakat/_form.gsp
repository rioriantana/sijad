<%@ page import="sijad.PengabdianMasyarakat" %>



<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'judul', 'error')} ">
	<label for="judul">
		<g:message code="pengabdianMasyarakat.judul.label" default="Judul" />
		
	</label>
	<g:textField name="judul" value="${pengabdianMasyarakatInstance?.judul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'tahunBerjalan', 'error')} ">
	<label for="tahunBerjalan">
		<g:message code="pengabdianMasyarakat.tahunBerjalan.label" default="Tahun Berjalan" />
		
	</label>
	<g:textField name="tahunBerjalan" value="${pengabdianMasyarakatInstance?.tahunBerjalan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'sumberDana', 'error')} ">
	<label for="sumberDana">
		<g:message code="pengabdianMasyarakat.sumberDana.label" default="Sumber Dana" />
		
	</label>
	<g:select name="sumberDana" from="${pengabdianMasyarakatInstance.constraints.sumberDana.inList}" value="${pengabdianMasyarakatInstance?.sumberDana}" valueMessagePrefix="pengabdianMasyarakat.sumberDana" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'jumlahDana', 'error')} ">
	<label for="jumlahDana">
		<g:message code="pengabdianMasyarakat.jumlahDana.label" default="Jumlah Dana" />
		
	</label>
	<g:field name="jumlahDana" value="${fieldValue(bean: pengabdianMasyarakatInstance, field: 'jumlahDana')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'namaKetua', 'error')} ">
	<label for="namaKetua">
		<g:message code="pengabdianMasyarakat.namaKetua.label" default="Nama Ketua" />
		
	</label>
	<g:textField name="namaKetua" value="${pengabdianMasyarakatInstance?.namaKetua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'namaAnggota', 'error')} ">
	<label for="namaAnggota">
		<g:message code="pengabdianMasyarakat.namaAnggota.label" default="Nama Anggota" />
		
	</label>
	<g:textField name="namaAnggota" value="${pengabdianMasyarakatInstance?.namaAnggota}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'dosens', 'error')} ">
	<label for="dosens">
		<g:message code="pengabdianMasyarakat.dosens.label" default="Dosens" />
		
	</label>
	<g:select name="dosens" from="${sijad.Dosen.list()}" multiple="multiple" optionKey="id" size="5" value="${pengabdianMasyarakatInstance?.dosens*.id}" class="many-to-many"/>

</div>

