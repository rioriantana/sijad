<%@ page import="sijad.MataKuliah" %>



<div class="fieldcontain ${hasErrors(bean: mataKuliahInstance, field: 'kodeMakul', 'error')} ">
	<label for="kodeMakul">
		<g:message code="mataKuliah.kodeMakul.label" default="Kode Makul" />
		
	</label>
	<g:textField name="kodeMakul" value="${mataKuliahInstance?.kodeMakul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mataKuliahInstance, field: 'namaMakul', 'error')} ">
	<label for="namaMakul">
		<g:message code="mataKuliah.namaMakul.label" default="Nama Makul" />
		
	</label>
	<g:textField name="namaMakul" value="${mataKuliahInstance?.namaMakul}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mataKuliahInstance, field: 'jumlahSKS', 'error')} ">
	<label for="jumlahSKS">
		<g:message code="mataKuliah.jumlahSKS.label" default="Jumlah SKS" />
		
	</label>
	<g:field name="jumlahSKS" type="number" value="${mataKuliahInstance.jumlahSKS}"/>

</div>

