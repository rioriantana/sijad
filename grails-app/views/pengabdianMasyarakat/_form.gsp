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

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'namaAnggota1', 'error')} ">
	<label for="namaAnggota1">
		<g:message code="pengabdianMasyarakat.namaAnggota1.label" default="Nama Anggota1" />
		
	</label>
	<g:textField name="namaAnggota1" value="${pengabdianMasyarakatInstance?.namaAnggota1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'namaAnggota2', 'error')} ">
	<label for="namaAnggota2">
		<g:message code="pengabdianMasyarakat.namaAnggota2.label" default="Nama Anggota2" />
		
	</label>
	<g:textField name="namaAnggota2" value="${pengabdianMasyarakatInstance?.namaAnggota2}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'tagDosen2', 'error')} ">
	<label for="tagDosen2">
		<g:message code="pengabdianMasyarakat.tagDosen2.label" default="Tandai Dosen" />
		
	</label>
	<g:select id="tagDosen2" name="tagDosen2.id" from="${sijad.Dosen.list()}" optionKey="id" value="${pengabdianMasyarakatInstance?.tagDosen2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pengabdianMasyarakatInstance, field: 'tagDosen3', 'error')} ">
	<label for="tagDosen3">
		<g:message code="pengabdianMasyarakat.tagDosen3.label" default="Tandai Dosen" />
		
	</label>
	<g:select id="tagDosen3" name="tagDosen3.id" from="${sijad.Dosen.list()}" optionKey="id" value="${pengabdianMasyarakatInstance?.tagDosen3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

