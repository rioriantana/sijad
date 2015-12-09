package sijad

class Prosiding {
	String judul
	String namaConference
	String kategoriConference
	String namaAnggota
	String tahun
	String halaman
	String alamatWebProsiding
	static hasMany = [dosens: Dosen]
    static constraints = {
    	judul(nullable:true, unique: true)
		namaConference(nullable:true)
		kategoriConference(nullable:true, inLine: ['Nasional', 'Internasional'])
		namaAnggota(nullable:true)
		tahun(nullable:true)
		halaman(nullable:true)
		alamatWebProsiding(nullable:true)
    }

	public String toString(){
    	"$judul"
    }
}
