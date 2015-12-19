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
}
