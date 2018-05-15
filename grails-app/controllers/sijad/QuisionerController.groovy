package sijad



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuisionerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Quisioner.list(params), model:[quisionerInstanceCount: Quisioner.count()]
    }

    def show(Quisioner quisionerInstance) {
        respond quisionerInstance
    }

  def list(Integer max) {
        def tanggalAhir = new Date()
        def tanggalAwal = tanggalAhir - 7
        print tanggalAhir
        params.max = Math.min(max ?: 10, 100)
        respond Quisioner.findAllByNimAndTanggalBetween(session.nim, tanggalAwal, tanggalAhir), model:[quisionerInstanceCount: Quisioner.countByNimAndTanggalBetween(session.nim, tanggalAwal, tanggalAhir)]
    }

    def print(Integer max) {
        def tanggalAhir = new Date()
        def tanggalAwal = tanggalAhir - 7
        print tanggalAhir
        params.max = Math.min(max ?: 10, 100)
        respond Quisioner.findAllByNimAndTanggalBetween(session.nim, tanggalAwal, tanggalAhir), model:[quisionerInstanceCount: Quisioner.countByNimAndTanggalBetween(session.nim, tanggalAwal, tanggalAhir)]
    }


    def create() {
        respond new Quisioner(params)
    }

    @Transactional
    def save(Quisioner quisionerInstance) {
        if (quisionerInstance == null) {
            notFound()
            return
        }

        if (quisionerInstance.hasErrors()) {
            respond quisionerInstance.errors, view:'create'
            return
        }

        quisionerInstance.tanggal = new Date()
        quisionerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'quisioner.label', default: 'Quisioner'), quisionerInstance.id])
                redirect(controller:'quisioner',action:'list')
            }
            '*' { respond quisionerInstance, [status: CREATED] }
        }
    }

    def edit(Quisioner quisionerInstance) {
        respond quisionerInstance
    }

    @Transactional
    def update(Quisioner quisionerInstance) {
        if (quisionerInstance == null) {
            notFound()
            return
        }

        if (quisionerInstance.hasErrors()) {
            respond quisionerInstance.errors, view:'edit'
            return
        }

        quisionerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Quisioner.label', default: 'Quisioner'), quisionerInstance.id])
                redirect(controller:'quisioner',action:'list')
            }
            '*'{ respond quisionerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Quisioner quisionerInstance) {

        if (quisionerInstance == null) {
            notFound()
            return
        }

        quisionerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Quisioner.label', default: 'Quisioner'), quisionerInstance.id])
                redirect(controller:'quisioner',action:'list')
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'quisioner.label', default: 'Quisioner'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
