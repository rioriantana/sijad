<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan Quisioner Dosen</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 landscape;
        @top-center {
            content: element(header);
        }
    }
    table {
        border-collapse:collapse;
        border:1px solid #FF0000;
        font-size: 12px;
    }
    .title{
    	font-weight: bold;
    	text-align: center;
    }
    table td {
        border:1px solid #FF0000;
        padding: 2px;
    }
    td.center {
        text-align: center;
    }

</style>
<script type="text/javascript">
    window.print();
</script>
</head>
<body>
<h3><center>Data Quisioner Mata Kuliah Program Studi Kimia FMIPA UNS<br>
Periode Tahun Ajaran <g:formatDate format="yyyy" date="${tahunAkademik}"/> </center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">dosen</td>
        <td  class="title">mataKuliah</td>
        <td class="title">p1</td>
		<td class="title">p2</td>
        <td  class="title">p3</td>
		<td class="title">p4</td>
		<td class="title">p5</td>
		<td class="title">p6</td>
        <td class="title">p7</td>
		<td class="title">p8</td>
		<td class="title">p9</td>
        <td class="title">p10</td>
        <td class="title">p11</td>
        <td class="title">p12</td>
        <td  class="title">p13</td>
        <td class="title">p14</td>
        <td class="title">p15</td>
        <td class="title">p16</td>
        <td class="title">p17</td>
        <td class="title">p18</td>
        <td class="title">p19</td>
        <td class="title">p20</td>
    </tr>
    <g:each in="${rekapQuisionerInstanceList}" status="i" var="informasi">
        <tr>
            <td>${i+1}</td>
            <td >${informasi?.dosen?.nama}</td>
            <td >${informasi?.mataKuliah?.namaMakul}</td>
            <td >${informasi?.p1}</td>
            <td >${informasi?.p2}</td>
            <td >${informasi?.p3}</td>
			<td >${informasi?.p4}</td>
			<td >${informasi?.p5}</td>
			<td >${informasi?.p6}</td>
            <td >${informasi?.p7}</td>
			<td >${informasi?.p8}</td>
			<td >${informasi?.p9}</td>
            <td >${informasi?.p10}</td>
            <td >${informasi?.p11}</td>
            <td >${informasi?.p12}</td>
            <td >${informasi?.p13}</td>
            <td >${informasi?.p14}</td>
            <td >${informasi?.p15}</td>
            <td >${informasi?.p16}</td>
            <td >${informasi?.p17}</td>
            <td >${informasi?.p18}</td>
            <td >${informasi?.p19}</td>
            <td >${informasi?.p20}</td>
        </tr>
    </g:each>
</table>
Keterangan : <br>

</body>
</html>
