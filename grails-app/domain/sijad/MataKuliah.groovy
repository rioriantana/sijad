package sijad

class MataKuliah {
	String kodeMakul
	String namaMakul
	Integer jumlahSKS
    static constraints = {
    	kodeMakul(nullable: true)
		namaMakul(nullable: true)
		jumlahSKS(nullable: true)
    }

	public String toString(){
    	"$kodeMakul"
    }
}
