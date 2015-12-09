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

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'namaAnggota', 'error')} ">
	<label for="namaAnggota">
		<g:message code="penelitian.namaAnggota.label" default="Nama Anggota" />
		
	</label>
	<g:textField name="namaAnggota" value="${penelitianInstance?.namaAnggota}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: penelitianInstance, field: 'dosens', 'error')} ">
	<label for="dosens">
		<g:message code="penelitian.dosens.label" default="Dosens" />
		
	</label>
	<g:select name="dosens" from="${sijad.Dosen.list()}" multiple="multiple" optionKey="id" size="5" value="${penelitianInstance?.dosens*.id}" class="many-to-many"/>

</div>

