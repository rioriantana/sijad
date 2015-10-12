package sijad

class Jurnal {
	String judul
	String namaJurnal
	String kategoriJurnal
	String namaKetua
	String namaAnggota1
	String namaAnggota2
	String tahun
	String volume
	String nomor
	String halaman
	Dosen tagDosen1
	Dosen tagDosen2
	Dosen tagDosen3
	String alamatWebJurnal
    static constraints = {
    	judul(nullable:true, unique: true)
		namaJurnal(nullable:true)
		kategoriJurnal(nullable:true, inList: ['Nasional Tidak Terakreditasi', 'Nasional Terakreditasi', 'Internasional'])
		namaKetua(nullable:true)
		namaAnggota1(nullable:true)
		namaAnggota2(nullable:true)
		tahun(nullable:true)
		volume(nullable:true)
		nomor(nullable:true)
		halaman(nullable:true)
		tagDosen1(nullable:true)
		tagDosen2(nullable:true)
		tagDosen3(nullable:true)
		alamatWebJurnal(nullable:true)
    }

	public String toString(){
    	"$judul"
    }
}
