package sijad

class Prosiding {
	String judul
	String namaConference
	String kategoriConference
	String namaKetua
	String namaAnggota1
	String namaAnggota2
	String tahun
	String halaman
	Dosen tagDosen1
	Dosen tagDosen2
	Dosen tagDosen3
	String alamatWebProsiding
    static constraints = {
    	judul(nullable:true, unique: true)
		namaConference(nullable:true)
		kategoriConference(nullable:true, inLine: ['Nasional', 'Internasional'])
		namaKetua(nullable:true)
		namaAnggota1(nullable:true)
		namaAnggota2(nullable:true)
		tahun(nullable:true)
		halaman(nullable:true)
		tagDosen1(nullable:true)
		tagDosen2(nullable:true)
		tagDosen3(nullable:true)
		alamatWebProsiding(nullable:true)
    }

	public String toString(){
    	"$judul"
    }
}
