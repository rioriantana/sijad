package sijad

class Dosen {
	String nidn
	String nama
	String golongan
	String jabatan
	String role
	String password
    static constraints = {
    	nidn(nullable:true)
		nama(nullable:true)
		golongan(nullable:true)
		jabatan(nullable:true)
		role(nullable:true, inList: ['ADMIN', 'DOSEN', 'KAPRODI'])
		password(nullable:false)
    }

	public String toString(){
    	"$nama"
    }
}
