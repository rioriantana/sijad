package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PengabdianMasyarakatController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def dosen = Dosen.get(session.user)
        def pengabdianMasyarakatInstance = PengabdianMasyarakat.findAllByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        def pengabdianMasyarakatInstanceCount = PengabdianMasyarakat.countByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        [pengabdianMasyarakatInstanceList: pengabdianMasyarakatInstance, pengabdianMasyarakatInstanceCount: pengabdianMasyarakatInstanceCount]
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
        def dosen = Dosen.get(session.user)
        pengabdianMasyarakatInstance.tagDosen1 = dosen
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
