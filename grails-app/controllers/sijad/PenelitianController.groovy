package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PenelitianController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def dosen = Dosen.get(session.user)
        def penelitianInstance = Penelitian.findAllByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        def penelitianInstanceCount = Penelitian.countByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        [penelitianInstanceList: penelitianInstance, penelitianInstanceCount: penelitianInstanceCount]
    }

    def show(Penelitian penelitianInstance) {
        respond penelitianInstance
    }

    def create() {
        respond new Penelitian(params)
    }

    @Transactional
    def save(Penelitian penelitianInstance) {
        if (penelitianInstance == null) {
            notFound()
            return
        }

        if (penelitianInstance.hasErrors()) {
            respond penelitianInstance.errors, view:'create'
            return
        }

        penelitianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'penelitian.label', default: 'Penelitian'), penelitianInstance.id])
                redirect penelitianInstance
            }
            '*' { respond penelitianInstance, [status: CREATED] }
        }
    }

    def edit(Penelitian penelitianInstance) {
        respond penelitianInstance
    }

    @Transactional
    def update(Penelitian penelitianInstance) {
        if (penelitianInstance == null) {
            notFound()
            return
        }

        if (penelitianInstance.hasErrors()) {
            respond penelitianInstance.errors, view:'edit'
            return
        }
        def dosen = Dosen.get(session.user)
        penelitianInstance.tagDosen1 = dosen
        penelitianInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Penelitian.label', default: 'Penelitian'), penelitianInstance.id])
                redirect penelitianInstance
            }
            '*'{ respond penelitianInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Penelitian penelitianInstance) {

        if (penelitianInstance == null) {
            notFound()
            return
        }

        penelitianInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Penelitian.label', default: 'Penelitian'), penelitianInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'penelitian.label', default: 'Penelitian'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
