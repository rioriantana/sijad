package sijad

class PengabdianMasyarakat {
	String judul
	String tahunBerjalan
	String sumberDana
	Double jumlahDana
	String namaKetua
	String namaAnggota1
	String namaAnggota2
	Dosen tagDosen1
	Dosen tagDosen2
	Dosen tagDosen3
	static constraints = {
		judul(nullable:true, unique: true)
		tahunBerjalan(nullable:true)
		sumberDana(nullable:true, inList: ['UNS','Luar UNS (Nasional)', 'Luar UNS (Internasional)'])
		jumlahDana(nullable:true)
		namaKetua(nullable:true)
		namaAnggota1(nullable:true)
		namaAnggota2(nullable:true)
		tagDosen1(nullable:true)
		tagDosen2(nullable:true)
		tagDosen3(nullable:true)
	}
	public String toString(){
		"$judul"
	}
}