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
<h3><center>Data Quisioner Mata Kuliah Program Studi Fisika FMIPA UNS<br>
Periode Tahun Ajaran <g:formatDate format="yyyy" date="${tahunAkademik}"/> </center></h3>

<table width="100%">
    <tr>
        <td class="title">No. </td>
        <td class="title">Jml Mhs</td>
        <td class="title">Nama Dosen</td>
        <td class="title">Mata Kuliah</td>
        <td class="title">P1</td>
		<td class="title">P2</td>
        <td class="title">P3</td>
		<td class="title">P4</td>
		<td class="title">P5</td>
		<td class="title">P6</td>
        <td class="title">P7</td>
		<td class="title">P8</td>
		<td class="title">P9</td>
        <td class="title">P10</td>
        <td class="title">P11</td>
        <td class="title">P12</td>
        <td class="title">P13</td>
        <td class="title">P14</td>
        <td class="title">P15</td>
        <td class="title">P16</td>
        <td class="title">P17</td>
        <td class="title">P18</td>
        <td class="title">P19</td>
        <td class="title">P20</td>
    </tr>
    <g:each in="${rekapQuisionerInstanceList}" status="i" var="informasi">
        <tr>
            <td>${i+1}</td>
            <td >${informasi[0]}</td>
            <td >${informasi[1]}</td>
            <td >${informasi[2]}</td>
            <td <g:if test="${informasi[3] > 3 }">class="hijau"</g:if> <g:if test="${informasi[3]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[3]}" format="0.00"/></td>
            <td <g:if test="${informasi[4] > 3 }">class="hijau"</g:if> <g:if test="${informasi[4]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[4]}" format="0.00"/></td>
            <td <g:if test="${informasi[5] > 3 }">class="hijau"</g:if> <g:if test="${informasi[5]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[5]}" format="0.00"/></td>
			<td <g:if test="${informasi[6] > 3 }">class="hijau"</g:if> <g:if test="${informasi[6]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[6]}" format="0.00"/></td>
			<td <g:if test="${informasi[7] > 3 }">class="hijau"</g:if> <g:if test="${informasi[7]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[7]}" format="0.00"/></td>
			<td <g:if test="${informasi[8] > 3 }">class="hijau"</g:if> <g:if test="${informasi[8]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[8]}" format="0.00"/></td>
            <td <g:if test="${informasi[9] > 3 }">class="hijau"</g:if> <g:if test="${informasi[9]  > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[9]}" format="0.00"/></td>
			<td <g:if test="${informasi[10] > 3 }">class="hijau"</g:if> <g:if test="${informasi[10] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[10]}" format="0.00"/></td>
			<td <g:if test="${informasi[11] > 3 }">class="hijau"</g:if> <g:if test="${informasi[11] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[11]}" format="0.00"/></td>
            <td <g:if test="${informasi[12] > 3 }">class="hijau"</g:if> <g:if test="${informasi[12] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[12]}" format="0.00"/></td>
            <td <g:if test="${informasi[13] > 3 }">class="hijau"</g:if> <g:if test="${informasi[13] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[13]}" format="0.00"/></td>
            <td <g:if test="${informasi[14] > 3 }">class="hijau"</g:if> <g:if test="${informasi[14] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[14]}" format="0.00"/></td>
            <td <g:if test="${informasi[15] > 3 }">class="hijau"</g:if> <g:if test="${informasi[15] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[15]}" format="0.00"/></td>
            <td <g:if test="${informasi[16] > 3 }">class="hijau"</g:if> <g:if test="${informasi[16] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[16]}" format="0.00"/></td>
            <td <g:if test="${informasi[17] > 3 }">class="hijau"</g:if> <g:if test="${informasi[17] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[17]}" format="0.00"/></td>
            <td <g:if test="${informasi[18] > 3 }">class="hijau"</g:if> <g:if test="${informasi[18] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[18]}" format="0.00"/></td>
            <td <g:if test="${informasi[19] > 3 }">class="hijau"</g:if> <g:if test="${informasi[19] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[19]}" format="0.00"/></td>
            <td <g:if test="${informasi[20] > 3 }">class="hijau"</g:if> <g:if test="${informasi[20] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[20]}" format="0.00"/></td>
            <td <g:if test="${informasi[21] > 3 }">class="hijau"</g:if> <g:if test="${informasi[21] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[21]}" format="0.00"/></td>
            <td <g:if test="${informasi[22] > 3 }">class="hijau"</g:if> <g:if test="${informasi[22] > 1.5}">class="kuning"</g:if> <g:else> class="merah" </g:else>><g:formatNumber number="${informasi[22]}" format="0.00"/></td>
        </tr>
    </g:each>
</table>
Keterangan : <br>
<ul>
<li>P1  = Dosen memberikan silabi materi yang akan diajarkan</li>
<li>P2  = Dosen memberikan manfaat terhadap materi yang diajarkan</li>
<li>P3  = Dosen mempunyai rancangan perkuliahan, test dan tugas-tugas yang akan diberikan</li>
<li>P4  = Dosen menyampaikan rencana penilaian(bobot nilai</li>
<li>P5  = Sumber belajar yang ditunjuk mudah untuk ditemukan</li>
<li>P6  = Materi disajikan dengan bentuk yang menarik</li>
<li>P7  = Dosen memberikan garis besar materi yang harus dikuasai tiap tatap muka</li>
<li>P8  = Digunakan media yang merangsang mahasiswa untuk bertanya</li>
<li>P9  = Dosen menggunakan bahasa yang mudah dipahami mahasiswa</li>
<li>P10 = Mahasiswa diberi waktu untuk bertanya</li>
<li>P11 = Dosen memberikan waktu konsultasi diluar jam kuliah</li>
<li>P12 = Dosen tepat waktu dalam mengajar</li>
<li>P13 = Dosen selalu hadir memberikan kuliah</li>
<li>P14 = Dosen memantau kehadiran mahasiswa</li>
<li>P15 = Dosen memberi tugas yang terencana</li>
<li>P16 = Dosen memberi quis yang terencana</li>
<li>P17 = Dosen memberikan umpan balik terhadap tugas / ujian yang diberikan</li>
<li>P18 = Dosen menginformasikan hasil nilai tugas / ujian</li>
<li>P19 = Dosen memberikan materi silabi</li>
<li>P20 = Dosen menepati rancangan perkuliahan yang telah disusun</li>
</ul>
</body>
</html>
