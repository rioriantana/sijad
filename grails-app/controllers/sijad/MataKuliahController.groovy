package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
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
}
