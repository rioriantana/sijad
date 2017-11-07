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
        def queryRekap = "SELECT COUNT(*) AS jumlah, CEIL(AVG(p1)) as p1, CEIL(AVG(p2)) as p2, CEIL(AVG(p3)) as p3, CEIL(AVG(p4)) as p4, CEIL(AVG(p5)) as p5, CEIL(AVG(p6)) as p6, CEIL(AVG(p7)) as p7, CEIL(AVG(p8)) as p8, CEIL(AVG(p9)) as p9, CEIL(AVG(p10)) as p10, CEIL(AVG(p11)) as p11, CEIL(AVG(p12)) as p12, CEIL(AVG(p13)) as p13, CEIL(AVG(p14)) as p14, CEIL(AVG(p15)) as p15, CEIL(AVG(p16)) as p16, CEIL(AVG(p17)) as p17, CEIL(AVG(p18)) as p18, CEIL(AVG(p19)) as p19, CEIL(AVG(p20)) as p20 FROM quisioner where tanggal between :tanggalAwal and :tanggalAkhir GROUP by dosen_id, mata_kuliah_id"
        def rekapQuisioner = Quisioner.excecuteQuery(queryRekap, [tanggalAwal: tanggalAwal, tanggalAkhir: tanggalAkhir])
        ender(controller: this, template: "rekapQuisioner", model: [rekapQuisionerInstanceList: rekapQuisioner, tahunAkademik: tahunAkademik] )
    }
}
