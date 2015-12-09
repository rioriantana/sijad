package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProsidingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
       params.offset = params.offset ? params.offset.toInteger() : 0
        def dosen = Dosen.get(session.user)
        List prosidings = Prosiding.createCriteria().list{
            dosens{
            eq('nama', dosen.nama)
            } 
            maxResults(params.max)
            firstResult(params.offset)
            }   
        def prosidingsis = Prosiding.createCriteria().count{
            dosens{
            eq('nama', dosen.nama)
            }     
            }   
        [prosidingInstanceList: prosidings, prosidingInstanceCount: prosidingsis ]
    }

    def show(Prosiding prosidingInstance) {
        respond prosidingInstance
    }

    def create() {
        respond new Prosiding(params)
    }

    @Transactional
    def save(Prosiding prosidingInstance) {
        if (prosidingInstance == null) {
            notFound()
            return
        }

        if (prosidingInstance.hasErrors()) {
            respond prosidingInstance.errors, view:'create'
            return
        }

        prosidingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prosiding.label', default: 'Prosiding'), prosidingInstance.id])
                redirect prosidingInstance
            }
            '*' { respond prosidingInstance, [status: CREATED] }
        }
    }

    def edit(Prosiding prosidingInstance) {
        respond prosidingInstance
    }

    @Transactional
    def update(Prosiding prosidingInstance) {
        if (prosidingInstance == null) {
            notFound()
            return
        }

        if (prosidingInstance.hasErrors()) {
            respond prosidingInstance.errors, view:'edit'
            return
        }

        prosidingInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Prosiding.label', default: 'Prosiding'), prosidingInstance.id])
                redirect prosidingInstance
            }
            '*'{ respond prosidingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Prosiding prosidingInstance) {

        if (prosidingInstance == null) {
            notFound()
            return
        }

        prosidingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Prosiding.label', default: 'Prosiding'), prosidingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prosiding.label', default: 'Prosiding'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
