<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>Laporan Quisioner Dosen</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style  type="text/css">
    @page {
        size: A4 portrait;
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

    .kuning{
        background: yellow;
    }

    .hijau{
        background: #42f46e;
    }


    .merah{
        background: #f75142
    }

</style>
<script type="text/javascript">
    window.print();
</script>
</head>
<body>
<h3><center>Bukti Pengisian Quisioner Mata Kuliah Program Studi Fisika FMIPA UNS<br>
Periode Tahun Ajaran <g:formatDate format="yyyy" date="${tahunAkademik}"/> </center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">Dosen</td>
        <td class="title">Mata Kuliah</td>
        <td class="title">Mhs Semester</td>
        <td class="title">NIM</td>
    </tr>
    <g:each in="${quisionerInstanceList}" status="i" var="quisionerInstance">
        <tr>
            <td align="center">${i+1}</td>
            <td>${fieldValue(bean: quisionerInstance, field: "dosen")}</td>
            <td>${fieldValue(bean: quisionerInstance, field: "mataKuliah")}</td>
            <td align="center">${fieldValue(bean: quisionerInstance, field: "mhsSemester")}</td>
            <td align="center">${fieldValue(bean: quisionerInstance, field: "nim")}</td>
        </tr>
    </g:each>
</table>
</body>
</html>
