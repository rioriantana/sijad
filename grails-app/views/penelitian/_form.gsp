<%@ page import="sijad.Penelitian" %>



<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'judul', 'error')} ">
	<label for="judul">
		<g:message code="penelitian.judul.label" default="Judul" />
		
	</label>
	<g:textField name="judul" value="${penelitianInstance?.judul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'tahunBerjalan', 'error')} ">
	<label for="tahunBerjalan">
		<g:message code="penelitian.tahunBerjalan.label" default="Tahun Berjalan" />
		
	</label>
	<g:textField name="tahunBerjalan" value="${penelitianInstance?.tahunBerjalan}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'sumberDana', 'error')} ">
	<label for="sumberDana">
		<g:message code="penelitian.sumberDana.label" default="Sumber Dana" />
		
	</label>
	<g:select name="sumberDana" from="${penelitianInstance.constraints.sumberDana.inList}" value="${penelitianInstance?.sumberDana}" valueMessagePrefix="penelitian.sumberDana" noSelection="['': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'jumlahDana', 'error')} ">
	<label for="jumlahDana">
		<g:message code="penelitian.jumlahDana.label" default="Jumlah Dana" />
		
	</label>
	<g:field name="jumlahDana" value="${fieldValue(bean: penelitianInstance, field: 'jumlahDana')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'namaKetua', 'error')} ">
	<label for="namaKetua">
		<g:message code="penelitian.namaKetua.label" default="Nama Ketua" />
		
	</label>
	<g:textField name="namaKetua" value="${penelitianInstance?.namaKetua}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'namaAnggota1', 'error')} ">
	<label for="namaAnggota1">
		<g:message code="penelitian.namaAnggota1.label" default="Nama Anggota1" />
		
	</label>
	<g:textField name="namaAnggota1" value="${penelitianInstance?.namaAnggota1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'namaAnggota2', 'error')} ">
	<label for="namaAnggota2">
		<g:message code="penelitian.namaAnggota2.label" default="Nama Anggota2" />
		
	</label>
	<g:textField name="namaAnggota2" value="${penelitianInstance?.namaAnggota2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'tagDosen1', 'error')} ">
	<label for="tagDosen1">
		<g:message code="penelitian.tagDosen1.label" default="Tag Dosen1" />
		
	</label>
	<g:select id="tagDosen1" name="tagDosen1.id" from="${sijad.Dosen.list()}" optionKey="id" value="${penelitianInstance?.tagDosen1?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'tagDosen2', 'error')} ">
	<label for="tagDosen2">
		<g:message code="penelitian.tagDosen2.label" default="Tag Dosen2" />
		
	</label>
	<g:select id="tagDosen2" name="tagDosen2.id" from="${sijad.Dosen.list()}" optionKey="id" value="${penelitianInstance?.tagDosen2?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'tagDosen3', 'error')} ">
	<label for="tagDosen3">
		<g:message code="penelitian.tagDosen3.label" default="Tag Dosen3" />
		
	</label>
	<g:select id="tagDosen3" name="tagDosen3.id" from="${sijad.Dosen.list()}" optionKey="id" value="${penelitianInstance?.tagDosen3?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

