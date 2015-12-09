package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PengabdianMasyarakatController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.offset = params.offset ? params.offset.toInteger() : 0
        def dosen = Dosen.get(session.user)
        List pengabdianMasyarakats = PengabdianMasyarakat.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            maxResults(params.max)
            firstResult(params.offset)
            }   
        def pengabdianMasyarakatsis = PengabdianMasyarakat.createCriteria().count{
            dosens{
            eq('nama', dosen.nama)
            }     
            }   
        [pengabdianMasyarakatInstanceList: pengabdianMasyarakats, pengabdianMasyarakatInstanceCount: pengabdianMasyarakatsis ]
    }

    def show(PengabdianMasyarakat pengabdianMasyarakatInstance) {
        respond pengabdianMasyarakatInstance
    }

    def create() {
        respond new PengabdianMasyarakat(params)
    }

    @Transactional
    def save(PengabdianMasyarakat pengabdianMasyarakatInstance) {
        if (pengabdianMasyarakatInstance == null) {
            notFound()
            return
        }

        if (pengabdianMasyarakatInstance.hasErrors()) {
            respond pengabdianMasyarakatInstance.errors, view:'create'
            return
        }

        pengabdianMasyarakatInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pengabdianMasyarakat.label', default: 'PengabdianMasyarakat'), pengabdianMasyarakatInstance.id])
                redirect pengabdianMasyarakatInstance
            }
            '*' { respond pengabdianMasyarakatInstance, [status: CREATED] }
        }
    }

    def edit(PengabdianMasyarakat pengabdianMasyarakatInstance) {
        respond pengabdianMasyarakatInstance
    }

    @Transactional
    def update(PengabdianMasyarakat pengabdianMasyarakatInstance) {
        if (pengabdianMasyarakatInstance == null) {
            notFound()
            return
        }

        if (pengabdianMasyarakatInstance.hasErrors()) {
            respond pengabdianMasyarakatInstance.errors, view:'edit'
            return
        }

        pengabdianMasyarakatInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PengabdianMasyarakat.label', default: 'PengabdianMasyarakat'), pengabdianMasyarakatInstance.id])
                redirect pengabdianMasyarakatInstance
            }
            '*'{ respond pengabdianMasyarakatInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PengabdianMasyarakat pengabdianMasyarakatInstance) {

        if (pengabdianMasyarakatInstance == null) {
            notFound()
            return
        }

        pengabdianMasyarakatInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PengabdianMasyarakat.label', default: 'PengabdianMasyarakat'), pengabdianMasyarakatInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pengabdianMasyarakat.label', default: 'PengabdianMasyarakat'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
