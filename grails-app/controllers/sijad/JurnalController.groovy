package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class JurnalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def dosen = Dosen.get(session.user)
        def jurnalInstance = Jurnal.findAllByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        def jurnalInstanceCount = Jurnal.countByTagDosen1OrTagDosen2OrTagDosen3(dosen, dosen, dosen, params)
        [jurnalInstanceList: jurnalInstance, jurnalInstanceCount: jurnalInstanceCount, oke: "okeoke"]
    }

    def show(Jurnal jurnalInstance) {
        respond jurnalInstance
    }

    def create() {
        def dosenInstance = Dosen.list();
        render(view: "create", model: [dosenInstance: dosenInstance, oke: "oke", jurnalInstance: new Jurnal(params)])
    }

    @Transactional
    def save(Jurnal jurnalInstance) {
        if (jurnalInstance == null) {
            notFound()
            return
        }

        if (jurnalInstance.hasErrors()) {
            respond jurnalInstance.errors, view:'create'
            return
        }
        def dosen = Dosen.get(session.user)
        jurnalInstance.tagDosen1 = dosen

        def checkedBooks = params.list('myCheckbox')
        checkedBooks.each {
            def dosen1 = Dosen.get(it)
        }
        jurnalInstance.tagDosen2 = dosen1

        jurnalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'jurnal.label', default: 'Jurnal'), jurnalInstance.id])
                redirect jurnalInstance
            }
            '*' { respond jurnalInstance, [status: CREATED] }
        }
    }

    def edit(Jurnal jurnalInstance) {
        respond jurnalInstance
    }

    @Transactional
    def update(Jurnal jurnalInstance) {
        if (jurnalInstance == null) {
            notFound()
            return
        }

        if (jurnalInstance.hasErrors()) {
            respond jurnalInstance.errors, view:'edit'
            return
        }

        jurnalInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Jurnal.label', default: 'Jurnal'), jurnalInstance.id])
                redirect jurnalInstance
            }
            '*'{ respond jurnalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Jurnal jurnalInstance) {

        if (jurnalInstance == null) {
            notFound()
            return
        }

        jurnalInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Jurnal.label', default: 'Jurnal'), jurnalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'jurnal.label', default: 'Jurnal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    def listDosen(){
        def dosenInstance = Dosen.list();
        def oke = "okeoke"
        [dosenInstanceList: dosenInstance, oke: oke]
    }
}
