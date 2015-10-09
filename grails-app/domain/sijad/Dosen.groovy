package sijad

class Dosen {
	String nidn
	String nama
	String golongan
	String jabatan
    static constraints = {
    	nidn(nullable:true)
		nama(nullable:true)
		golongan(nullable:true)
		jabatan(nullable:true)
    }

    String toString(){
    	"$nama"
    }
}
