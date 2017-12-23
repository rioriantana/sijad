<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan Wisuda</title>
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
<h3><center>Data Pubikasi Jurnal Dosen Fisika FMIPA UNS<br></center></h3>

<table width="100%">
    <tr>
        <td class="title">judul </td>
        <td class="title">namaJurnal </td>
        <td  class="title">kategoriJurnal </td>
        <td class="title"> namaPenulis </td>
        <td class="title"> tahun </td>
        <td  class="title">volume </td>
        <td class="title"> nomor </td>
        <td class="title"> halaman </td>
        <td class="title"> alamatWebJurnal </td>
    </tr>
    <g:each in="${jurnalInstance}" status="i" var="jurnal">
        <tr>
            <td >${jurnal?.judul}</td>
            <td >${jurnal?.namaJurnal}</td>
            <td >${jurnal?.kategoriJurnal}</td>
            <td >${jurnal?.dosens}</td>
            <td >${jurnal?.tahun}</td>
            <td >${jurnal?.volume} Bulan</td>
            <td >${jurnal?.nomor}</td>
            <td >${jurnal?.halaman}</td>
            <td >${jurnal?.alamatWebJurnal}</td>
        </tr>
    </g:each>
</table>

</body>
</html>
