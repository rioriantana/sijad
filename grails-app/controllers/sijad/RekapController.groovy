package sijad

import grails.converters.JSON
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

class RekapController {

    def index() { 
    	render "oke"
    }
    def rekapJurnal(){
    	def dosen = Dosen.get(session.user)
    	 List jurnals = Jurnal.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            }   
       [jurnalInstance: jurnals]
    }
    def rekapProsiding(){
    	def dosen = Dosen.get(session.user)
    	 List prosidings = Prosiding.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            }  
       [prosidingInstance: prosidings]
    }
    def rekapPenelitian(){
    	def dosen = Dosen.get(session.user)
    	 List penelitians = Penelitian.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            }   
       [penelitianInstance: penelitians]

    }
    def rekapPengabdianMasyarakat(){
    	def dosen = Dosen.get(session.user)
    	 List pengabdianMasyarakats = PengabdianMasyarakat.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            }  
       [pengabdianMasyarakatInstance: pengabdianMasyarakats]
    }

    def rekapQuisioner(){
        if(!params.tahunAkademik){
            return[]
        }
        def tanggalAwal = params.tahunAkademik
        def tanggalAkhir = tanggalAwal + 365
        //def rekap = Quisioner.findAllByTanggalBetween(tanggalAwal, tanggalAkhir)
        def rekap = Quisioner.createCriteria()
        def result = rekap.list{
            projections{
                between("tanggal", tanggalAwal, tanggalAkhir)
                count() 
                groupProperty('dosen')
                groupProperty('mataKuliah')
                avg('p1')
                avg('p2')
                avg('p3')
                avg('p4')
                avg('p5')
                avg('p6')
                avg('p7')
                avg('p8')
                avg('p9')
                avg('p10')
                avg('p11')
                avg('p12')
                avg('p13')
                avg('p14')
                avg('p15')
                avg('p16')
                avg('p17')
                avg('p18')
                avg('p19')
                avg('p20')
            }
        }
       /* def queryRekap = "SELECT count(*) AS jumlah, avg(p1) as p1, avg(p2) as p2, avg(p3) as p3, avg(p4) as p4, avg(p5) as p5, avg(p6) as p6, avg(p7) as p7, avg(p8) as p8, avg(p9) as p9, avg(p10) as p10, avg(p11) as p11, avg(p12) as p12, avg(p13) as p13, avg(p14) as p14, avg(p15) as p15, avg(p16) as p16, avg(p17) as p17, avg(p18) as p18, avg(p19) as p19, avg(p20) as p20 FROM quisioner where tanggal between :tanggalAwal and :tanggalAkhir GROUP by dosen_id, mata_kuliah_id"
        def rekapQuisioner = Quisioner.excecuteQuery(queryRekap, [tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir])*/
        
        render(controller: this, template: "rekapQuisioner", model: [rekapQuisionerInstanceList: result, tahunAkademik: tanggalAwal] )
    }
}
