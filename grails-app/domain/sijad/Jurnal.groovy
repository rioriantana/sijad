package sijad

class Jurnal {
	String judul
	String namaJurnal
	String kategoriJurnal
	String namaPenulis
	String tahun
	String volume
	String nomor
	String halaman
	String alamatWebJurnal
	static hasMany = [dosens: Dosen]
    static constraints = {
    	judul(nullable:true, unique: true)
		namaJurnal(nullable:true)
		kategoriJurnal(nullable:true, inList: ['Nasional Tidak Terakreditasi', 'Nasional Terakreditasi', 'Internasional'])
		namaPenulis(nullable:true)
		tahun(nullable:true)
		volume(nullable:true)
		nomor(nullable:true)
		halaman(nullable:true)
		alamatWebJurnal(nullable:true)

    }

	public String toString(){
    	"$judul"
    }
}
