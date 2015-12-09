package sijad

class Penelitian {
	String judul
	String tahunBerjalan
	String sumberDana
	Double jumlahDana
	String namaKetua
	String namaAnggota
	static hasMany = [dosens: Dosen]
	static constraints = {
		judul(nullable:true, unique: true)
		tahunBerjalan(nullable:true)
		sumberDana(nullable:true, inList: ['UNS','Luar UNS (Nasional)', 'Luar UNS (Internasional)'])
		jumlahDana(nullable:true)
		namaKetua(nullable:true)
		namaAnggota(nullable:true)
	}
	public String toString(){
		"$judul"
	}
}