<%@ page import="sijad.Quisioner" %>



<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'dosen', 'error')} ">
	<label for="dosen">
		<g:message code="quisioner.dosen.label" default="Dosen" />
		
	</label>
	<g:select id="dosen" name="dosen.id" from="${sijad.Dosen.list()}" optionKey="id" value="${quisionerInstance?.dosen?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'mataKuliah', 'error')} ">
	<label for="mataKuliah">
		<g:message code="quisioner.mataKuliah.label" default="Mata Kuliah" />
		
	</label>
	<g:select id="mataKuliah" name="mataKuliah.id" from="${sijad.MataKuliah.list()}" optionKey="id" value="${quisionerInstance?.mataKuliah?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'mhsSemester', 'error')} ">
	<label for="mhsSemester">
		<g:message code="quisioner.mhsSemester.label" default="Mhs Semester" />
		
	</label>
	<g:textField name="mhsSemester" value="${quisionerInstance?.mhsSemester}"/>

	<g:field type="hidden" name="nim" value="${session.nim}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p1', 'error')} ">
	<label for="p1">
		<g:message code="quisioner.p1.label" default="Dosen memberikan silabi materi yang akan diajarkan" />
		
	</label>
	<g:radio name="p1" value="1" checked="true"/> 1
	<g:radio name="p1" value="2"/>2
	<g:radio name="p1" value="3"/>3
	<g:radio name="p1" value="4"/>4
	<g:radio name="p1" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p2', 'error')} ">
	<label for="p2">
		<g:message code="quisioner.p2.label" default="Dosen memberikan manfaat terhadap materi yang diajarkan" />
		
	</label>
	<g:radio name="p2" value="1" checked="true"/> 1
	<g:radio name="p2" value="2"/>2
	<g:radio name="p2" value="3"/>3
	<g:radio name="p2" value="4"/>4
	<g:radio name="p2" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p3', 'error')} ">
	<label for="p3">
		<g:message code="quisioner.p3.label" default="Dosen mempunyai rancangan perkuliahan, test dan tugas-tugas yang akan diberikan" />
		
	</label>
	<g:radio name="p3" value="1" checked="true"/> 1
	<g:radio name="p3" value="2"/>2
	<g:radio name="p3" value="3"/>3
	<g:radio name="p3" value="4"/>4
	<g:radio name="p3" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p4', 'error')} ">
	<label for="p4">
		<g:message code="quisioner.p4.label" default="Dosen menyampaikan rencana penilaian(bobot nilai)" />
		
	</label>
	<g:radio name="p4" value="1" checked="true"/> 1
	<g:radio name="p4" value="2"/>2
	<g:radio name="p4" value="3"/>3
	<g:radio name="p4" value="4"/>4
	<g:radio name="p4" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p5', 'error')} ">
	<label for="p5">
		<g:message code="quisioner.p5.label" default="Sumber belajar yang ditunjuk mudah untuk ditemukan" />
		
	</label>
	<g:radio name="p5" value="1" checked="true"/> 1
	<g:radio name="p5" value="2"/>2
	<g:radio name="p5" value="3"/>3
	<g:radio name="p5" value="4"/>4
	<g:radio name="p5" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p6', 'error')} ">
	<label for="p6">
		<g:message code="quisioner.p6.label" default="Materi disajikan dengan bentuk yang menarik" />
		
	</label>
	<g:radio name="p6" value="1" checked="true"/> 1
	<g:radio name="p6" value="2"/>2
	<g:radio name="p6" value="3"/>3
	<g:radio name="p6" value="4"/>4
	<g:radio name="p6" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p7', 'error')} ">
	<label for="p7">
		<g:message code="quisioner.p7.label" default="Dosen memberikan garis besar materi yang harus dikuasai tiap tatap muka" />
		
	</label>
	<g:radio name="p7" value="1" checked="true"/> 1
	<g:radio name="p7" value="2"/>2
	<g:radio name="p7" value="3"/>3
	<g:radio name="p7" value="4"/>4
	<g:radio name="p7" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p8', 'error')} ">
	<label for="p8">
		<g:message code="quisioner.p8.label" default="Digunakan media yang merangsang mahasiswa untuk bertanya" />
		
	</label>
	<g:radio name="p8" value="1" checked="true"/> 1
	<g:radio name="p8" value="2"/>2
	<g:radio name="p8" value="3"/>3
	<g:radio name="p8" value="4"/>4
	<g:radio name="p8" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p9', 'error')} ">
	<label for="p9">
		<g:message code="quisioner.p9.label" default="Dosen menggunakan bahasa yang mudah dipahami mahasiswa" />
		
	</label>
	<g:radio name="p9" value="1" checked="true"/> 1
	<g:radio name="p9" value="2"/>2
	<g:radio name="p9" value="3"/>3
	<g:radio name="p9" value="4"/>4
	<g:radio name="p9" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p10', 'error')} ">
	<label for="p10">
		<g:message code="quisioner.p10.label" default="Mahasiswa diberi waktu untuk bertanya" />
		
	</label>
	<g:radio name="p10" value="1" checked="true"/> 1
	<g:radio name="p10" value="2"/>2
	<g:radio name="p10" value="3"/>3
	<g:radio name="p10" value="4"/>4
	<g:radio name="p10" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p11', 'error')} ">
	<label for="p11">
		<g:message code="quisioner.p11.label" default="Dosen memberikan waktu konsultasi diluar jam kuliah" />
		
	</label>
	<g:radio name="p11" value="1" checked="true"/> 1
	<g:radio name="p11" value="2"/>2
	<g:radio name="p11" value="3"/>3
	<g:radio name="p11" value="4"/>4
	<g:radio name="p11" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p12', 'error')} ">
	<label for="p12">
		<g:message code="quisioner.p12.label" default="Dosen tepat waktu dalam mengajar" />
		
	</label>
	<g:radio name="p12" value="1" checked="true"/> 1
	<g:radio name="p12" value="2"/>2
	<g:radio name="p12" value="3"/>3
	<g:radio name="p12" value="4"/>4
	<g:radio name="p12" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p13', 'error')} ">
	<label for="p13">
		<g:message code="quisioner.p13.label" default="Dosen selalu hadir memberikan kuliah" />
		
	</label>
	<g:radio name="p13" value="1" checked="true"/> 1
	<g:radio name="p13" value="2"/>2
	<g:radio name="p13" value="3"/>3
	<g:radio name="p13" value="4"/>4
	<g:radio name="p13" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p14', 'error')} ">
	<label for="p14">
		<g:message code="quisioner.p14.label" default="Dosen memantau kehadiran mahasiswa" />
		
	</label>
	<g:radio name="p14" value="1" checked="true"/> 1
	<g:radio name="p14" value="2"/>2
	<g:radio name="p14" value="3"/>3
	<g:radio name="p14" value="4"/>4
	<g:radio name="p14" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p15', 'error')} ">
	<label for="p15">
		<g:message code="quisioner.p15.label" default="Dosen memberi tugas yang terencana" />
		
	</label>
	<g:radio name="p15" value="1" checked="true"/> 1
	<g:radio name="p15" value="2"/>2
	<g:radio name="p15" value="3"/>3
	<g:radio name="p15" value="4"/>4
	<g:radio name="p15" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p16', 'error')} ">
	<label for="p16">
		<g:message code="quisioner.p16.label" default="Dosen memberi quis yang terencana" />
		
	</label>
	<g:radio name="p16" value="1" checked="true"/> 1
	<g:radio name="p16" value="2"/>2
	<g:radio name="p16" value="3"/>3
	<g:radio name="p16" value="4"/>4
	<g:radio name="p16" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p17', 'error')} ">
	<label for="p17">
		<g:message code="quisioner.p17.label" default="Dosen memberikan umpan balik terhadap tugas / ujian yang diberikan" />
		
	</label>
	<g:radio name="p17" value="1" checked="true"/> 1
	<g:radio name="p17" value="2"/>2
	<g:radio name="p17" value="3"/>3
	<g:radio name="p17" value="4"/>4
	<g:radio name="p17" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p18', 'error')} ">
	<label for="p18">
		<g:message code="quisioner.p18.label" default="Dosen menginformasikan hasil nilai tugas / ujian" />
		
	</label>
	<g:radio name="p18" value="1" checked="true"/> 1
	<g:radio name="p18" value="2"/>2
	<g:radio name="p18" value="3"/>3
	<g:radio name="p18" value="4"/>4
	<g:radio name="p18" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p19', 'error')} ">
	<label for="p19">
		<g:message code="quisioner.p19.label" default="Dosen memberikan materi silabi" />
		
	</label>
	<g:radio name="p19" value="1" checked="true"/> 1
	<g:radio name="p19" value="2"/>2
	<g:radio name="p19" value="3"/>3
	<g:radio name="p19" value="4"/>4
	<g:radio name="p19" value="5"/>5

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p20', 'error')} ">
	<label for="p20">
		<g:message code="quisioner.p20.label" default="Dosen menepati rancangan perkuliahan yang telah disusun" />
		
	</label>
	<g:radio name="p20" value="1" checked="true"/> 1
	<g:radio name="p20" value="2"/>2
	<g:radio name="p20" value="3"/>3
	<g:radio name="p20" value="4"/>4
	<g:radio name="p20" value="5"/>5

</div>

