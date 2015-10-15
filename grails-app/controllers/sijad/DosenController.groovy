package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DosenController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dosen.list(params), model:[dosenInstanceCount: Dosen.count()]
    }

    def show(Dosen dosenInstance) {
        respond dosenInstance
    }
    def dosen(){
      
        print session.user.id
    }
    def create() {
        respond new Dosen(params)
    }

    @Transactional
    def save(Dosen dosenInstance) {
        if (dosenInstance == null) {
            notFound()
            return
        }

        if (dosenInstance.hasErrors()) {
            respond dosenInstance.errors, view:'create'
            return
        }

        dosenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dosen.label', default: 'Dosen'), dosenInstance.id])
                redirect dosenInstance
            }
            '*' { respond dosenInstance, [status: CREATED] }
        }
    }

    def edit(Dosen dosenInstance) {
        respond dosenInstance
    }

    @Transactional
    def update(Dosen dosenInstance) {
        if (dosenInstance == null) {
            notFound()
            return
        }

        if (dosenInstance.hasErrors()) {
            respond dosenInstance.errors, view:'edit'
            return
        }

        dosenInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dosen.label', default: 'Dosen'), dosenInstance.id])
                redirect dosenInstance
            }
            '*'{ respond dosenInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dosen dosenInstance) {

        if (dosenInstance == null) {
            notFound()
            return
        }

        dosenInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dosen.label', default: 'Dosen'), dosenInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dosen.label', default: 'Dosen'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
