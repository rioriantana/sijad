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

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p1', 'error')} ">
	<label for="p1">
		<g:message code="quisioner.p1.label" default="P1" />
		
	</label>
	<g:textField name="p1" value="${quisionerInstance?.p1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p2', 'error')} ">
	<label for="p2">
		<g:message code="quisioner.p2.label" default="P2" />
		
	</label>
	<g:textField name="p2" value="${quisionerInstance?.p2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p3', 'error')} ">
	<label for="p3">
		<g:message code="quisioner.p3.label" default="P3" />
		
	</label>
	<g:textField name="p3" value="${quisionerInstance?.p3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p4', 'error')} ">
	<label for="p4">
		<g:message code="quisioner.p4.label" default="P4" />
		
	</label>
	<g:textField name="p4" value="${quisionerInstance?.p4}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p5', 'error')} ">
	<label for="p5">
		<g:message code="quisioner.p5.label" default="P5" />
		
	</label>
	<g:textField name="p5" value="${quisionerInstance?.p5}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p6', 'error')} ">
	<label for="p6">
		<g:message code="quisioner.p6.label" default="P6" />
		
	</label>
	<g:textField name="p6" value="${quisionerInstance?.p6}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p7', 'error')} ">
	<label for="p7">
		<g:message code="quisioner.p7.label" default="P7" />
		
	</label>
	<g:textField name="p7" value="${quisionerInstance?.p7}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p8', 'error')} ">
	<label for="p8">
		<g:message code="quisioner.p8.label" default="P8" />
		
	</label>
	<g:textField name="p8" value="${quisionerInstance?.p8}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p9', 'error')} ">
	<label for="p9">
		<g:message code="quisioner.p9.label" default="P9" />
		
	</label>
	<g:textField name="p9" value="${quisionerInstance?.p9}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p10', 'error')} ">
	<label for="p10">
		<g:message code="quisioner.p10.label" default="P10" />
		
	</label>
	<g:textField name="p10" value="${quisionerInstance?.p10}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p11', 'error')} ">
	<label for="p11">
		<g:message code="quisioner.p11.label" default="P11" />
		
	</label>
	<g:textField name="p11" value="${quisionerInstance?.p11}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p12', 'error')} ">
	<label for="p12">
		<g:message code="quisioner.p12.label" default="P12" />
		
	</label>
	<g:textField name="p12" value="${quisionerInstance?.p12}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p13', 'error')} ">
	<label for="p13">
		<g:message code="quisioner.p13.label" default="P13" />
		
	</label>
	<g:textField name="p13" value="${quisionerInstance?.p13}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p14', 'error')} ">
	<label for="p14">
		<g:message code="quisioner.p14.label" default="P14" />
		
	</label>
	<g:textField name="p14" value="${quisionerInstance?.p14}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p15', 'error')} ">
	<label for="p15">
		<g:message code="quisioner.p15.label" default="P15" />
		
	</label>
	<g:textField name="p15" value="${quisionerInstance?.p15}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p16', 'error')} ">
	<label for="p16">
		<g:message code="quisioner.p16.label" default="P16" />
		
	</label>
	<g:textField name="p16" value="${quisionerInstance?.p16}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p17', 'error')} ">
	<label for="p17">
		<g:message code="quisioner.p17.label" default="P17" />
		
	</label>
	<g:textField name="p17" value="${quisionerInstance?.p17}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p18', 'error')} ">
	<label for="p18">
		<g:message code="quisioner.p18.label" default="P18" />
		
	</label>
	<g:textField name="p18" value="${quisionerInstance?.p18}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p19', 'error')} ">
	<label for="p19">
		<g:message code="quisioner.p19.label" default="P19" />
		
	</label>
	<g:textField name="p19" value="${quisionerInstance?.p19}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'p20', 'error')} ">
	<label for="p20">
		<g:message code="quisioner.p20.label" default="P20" />
		
	</label>
	<g:textField name="p20" value="${quisionerInstance?.p20}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: quisionerInstance, field: 'tanggal', 'error')} ">
	<label for="tanggal">
		<g:message code="quisioner.tanggal.label" default="Tanggal" />
		
	</label>
	<g:datePicker name="tanggal" precision="day"  value="${quisionerInstance?.tanggal}" default="none" noSelection="['': '']" />

</div>

