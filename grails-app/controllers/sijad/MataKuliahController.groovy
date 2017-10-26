package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = false)
class MataKuliahController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MataKuliah.list(params), model:[mataKuliahInstanceCount: MataKuliah.count()]
    }

    def show(MataKuliah mataKuliahInstance) {
        respond mataKuliahInstance
    }

    def create() {
        respond new MataKuliah(params)
    }

    @Transactional
    def save(MataKuliah mataKuliahInstance) {
        if (mataKuliahInstance == null) {
            notFound()
            return
        }

        if (mataKuliahInstance.hasErrors()) {
            respond mataKuliahInstance.errors, view:'create'
            return
        }

        mataKuliahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mataKuliah.label', default: 'MataKuliah'), mataKuliahInstance.id])
                redirect mataKuliahInstance
            }
            '*' { respond mataKuliahInstance, [status: CREATED] }
        }
    }

    def edit(MataKuliah mataKuliahInstance) {
        respond mataKuliahInstance
    }

    @Transactional
    def update(MataKuliah mataKuliahInstance) {
        if (mataKuliahInstance == null) {
            notFound()
            return
        }

        if (mataKuliahInstance.hasErrors()) {
            respond mataKuliahInstance.errors, view:'edit'
            return
        }

        mataKuliahInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MataKuliah.label', default: 'MataKuliah'), mataKuliahInstance.id])
                redirect mataKuliahInstance
            }
            '*'{ respond mataKuliahInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MataKuliah mataKuliahInstance) {

        if (mataKuliahInstance == null) {
            notFound()
            return
        }

        mataKuliahInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MataKuliah.label', default: 'MataKuliah'), mataKuliahInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mataKuliah.label', default: 'MataKuliah'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def listMakul(){
        def oke = [[kodeMakul: "MAF102",    namaMakul: "PENGANTAR FISIKA LINGKUNGAN",sks:   "3"] ,[kodeMakul: "MAF109", namaMakul: "THERMODINAMIKA",sks:    "3"] ,[kodeMakul: "MAF113", namaMakul: "PENDAHULUAN FISIKA INTI I",sks: "2"] ,[kodeMakul: "MAF114", namaMakul: "PENDAHULUAN ZAT PADAT I",sks:   "3"] ,[kodeMakul: "MAF115", namaMakul: "KOMPUTASI FISIKA",sks:  "3"] ,[kodeMakul: "MAF115P",    namaMakul: "PRAKTIKUM KOMPUTANSI FISIKA",sks:   "1"] ,[kodeMakul: "MAF117", namaMakul: "SEMINAR",sks:   "2"] ,[kodeMakul: "MAF118", namaMakul: "MIKROKOMPUTER",sks: "3"] ,[kodeMakul: "MAF119", namaMakul: "INSTRUMENTASI FISIKA",sks:  "3"] ,[kodeMakul: "MAF120", namaMakul: "PENGANTAR OPTOELEKTRONIKA",sks: "3"] ,[kodeMakul: "MAF121", namaMakul: "OPTIKA MODERN",sks: "3"] ,[kodeMakul: "MAF122", namaMakul: "PENGANTAR FISIKA MATERIAL",sks: "3"] ,[kodeMakul: "MAF123", namaMakul: "ELEKTRODINAMIKA",sks:   "3"] ,[kodeMakul: "MAF124", namaMakul: "POLIMER PENDAHULUAN",sks:   "3"] ,[kodeMakul: "MAF124P",    namaMakul: "PRAKTIKUM PENDAHULUAN POLIMER",sks: "1"] ,[kodeMakul: "MAF125", namaMakul: "LASER TERAPAN",sks: "3"] ,[kodeMakul: "MAF126", namaMakul: "PENGOLAHAN SINYAL DIGITAL",sks: "3"] ,[kodeMakul: "MAF127", namaMakul: "PENGANTAR FISIKA AKUSTIK",sks:  "2"] ,[kodeMakul: "MAF128", namaMakul: "PENGANTAR GEOFISIKA",sks:   "3"] ,[kodeMakul: "MAF129", namaMakul: "PENGANTAR FISIKA RADIASI",sks:  "2"] ,[kodeMakul: "MAF130", namaMakul: "METODE DETEKSI NUKLIR",sks: "2"] ,[kodeMakul: "MAF131", namaMakul: "KAPITAL SELEKTA FISIKA",sks:    "2"] ,[kodeMakul: "MAF201", namaMakul: "FISIKA DASAR II",sks:   "4"] ,[kodeMakul: "MAF201P",    namaMakul: "PRAKTIKUM FISIKA DASAR II",sks: "2"] ,[kodeMakul: "MAF203", namaMakul: "FISIKA MATEMATIKA II",sks:  "3"] ,[kodeMakul: "MAF204", namaMakul: "ELEKTRONIKA DASAR II",sks:  "3"] ,[kodeMakul: "MAF204P",    namaMakul: "PRAKTIKUM ELEKTRONIKA DASAR II",sks:    "1"] ,[kodeMakul: "MAF205", namaMakul: "MEKANIKA II",sks:   "3"] ,[kodeMakul: "MAF206", namaMakul: "LISTRIK MAGNIT II",sks: "3"] ,[kodeMakul: "MAF207", namaMakul: "FISIKA MODERN II",sks:  "3"] ,[kodeMakul: "MAF208", namaMakul: "EKSPERIMEN FISIKA II",sks:  "2"] ,[kodeMakul: "MAF212", namaMakul: "FISIKA KUANTUM II",sks: "3"] ,[kodeMakul: "MAF213", namaMakul: "PENDAHULUAN FISIKA INTI II",sks:    "2"] ,[kodeMakul: "MAF214", namaMakul: "PENDAHULUAN ZAT PADAT II",sks:  "3"] ,[kodeMakul: "MAF216", namaMakul: "KERJA BENGKEL II",sks:  "1"] ,[kodeMakul: "MAF301", namaMakul: "ASISTEN LAB. I",sks:    "1"] ,[kodeMakul: "MAF304", namaMakul: "ELEKTRONIKA LANJUT",sks:    "3"] ,[kodeMakul: "MAF305", namaMakul: "MEKANIKA MEDIUM KONTINU",sks:   "3"] ,[kodeMakul: "MAF312", namaMakul: "MEKANIKA KUANTUM",sks:  "3"] ,[kodeMakul: "MAF314", namaMakul: "FISIKA ZAT PADAT",sks:  "3"] ,[kodeMakul: "MAF401", namaMakul: "ASISTEN LAB II",sks:    "1"] ,[kodeMakul: "MAF402", namaMakul: "FISIKA MATEMATIKA IV",sks:  "3"] ,[kodeMakul: "MAK201F",    namaMakul: "KIMIA DASAR II",sks:    "3"] ,[kodeMakul: "MAK201FP",   namaMakul: "PRAK KIMIA DASAR II",sks:   "1"] ,[kodeMakul: "MAK201PF",   namaMakul: "PRAKTIKUM FISIKA DASAR II",sks: "1"] ,[kodeMakul: "MAM103F",    namaMakul: "PEMROGAMAN KOMPUTER",sks:   "2"] ,[kodeMakul: "MAM103FP",   namaMakul: "PRAK. PEMROGRAMAN KOMPUTER",sks:    "1"] ,[kodeMakul: "MAM201F",    namaMakul: "MATEMATIKA DASAR II",sks:   "3"] ,[kodeMakul: "UNG102", namaMakul: "PENDIDIKAN PANCASILA",sks:  "2"] ,[kodeMakul: "UNG202", namaMakul: "FILSAFAT PANCASILA",sks:    "1"] ,[kodeMakul: "923112001",  namaMakul: "Pendidikan Agama",sks:  "2"] ,[kodeMakul: "923121141",  namaMakul: "Eksperimen Fisika I",sks:   "1"] ,[kodeMakul: "923122046",  namaMakul: "Dasar - Dasar Pengukuran Fisika",sks:   "2"] ,[kodeMakul: "923122137",  namaMakul: "Statistik Dasar",sks:   "2"] ,[kodeMakul: "923122138",  namaMakul: "Kimia Dasar I",sks: "2"] ,[kodeMakul: "923122139",  namaMakul: "Praktikum Kimia Dasar I",sks:   "1"] ,[kodeMakul: "923122142",  namaMakul: "Biologi",sks:   "2"] ,[kodeMakul: "923123008",  namaMakul: "Kimia Dasar I",sks: "3"] ,[kodeMakul: "923123136",  namaMakul: "Matematika Dasar",sks:  "3"] ,[kodeMakul: "923123140",  namaMakul: "Fisika Dasar I",sks:    "3"] ,[kodeMakul: "923124010",  namaMakul: "Matematika Dasar",sks:  "4"] ,[kodeMakul: "923142005",  namaMakul: "Bahasa Inggris",sks:    "2"] ,[kodeMakul: "BIO00013",   namaMakul: "BIOLOGI UMUM",sks:  "3"] ,[kodeMakul: "FIS00013",   namaMakul: "FISIKA DASAR I",sks:    "3"] ,[kodeMakul: "FIS00021",   namaMakul: "PRAKTIKUM FISIKA DASAR I",sks:  "1"] ,[kodeMakul: "FISB0013",   namaMakul: "FISIKA DASAR I",sks:    "4"] ,[kodeMakul: "FISB0021",   namaMakul: "PRAKTIKUM FISIKA DASAR 1",sks:  "2"] ,[kodeMakul: "KIM00013",   namaMakul: "KIMIA DASAR I",sks: "3"] ,[kodeMakul: "KIM00021",   namaMakul: "PRAKTEK KIMIA DASAR I", sks:"1"]]
        oke.each{
            def mataKuliahInstance = new MataKuliah(
                    kodeMakul   : it.kodeMakul,
                    namaMakul   : it.namaMakul,
                    jumlahSKS   : it.sks
                )
            mataKuliahInstance.save flush:true
        }
    }
}
