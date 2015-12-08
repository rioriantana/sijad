package sijad


import grails.converters.JSON
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

    def grafik(){
    def cols = [
      [label: "Topping", type:"string"],
      [label: "Slices", type:"number"]
    ]
 
    def rows = [
      [c: [[v: "Mushrooms"], [v:3]]],
      [c: [[v: "Onions"], [v:1]]],
      [c: [[v: "Olives"], [v:1]]],
      [c: [[v: "Zucchini"], [v:1]]],
      [c: [[v: "Pepperoni"], [v:2]]]
    ]
 
    def data = [cols: cols, rows: rows]
    render data as JSON
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

     def statusPelanggan () {
       
         def nomorPendaftaran = params.nomorPendaftaran
         def pendaftaran = Dosen.findByNip(nomorPendaftaran, params)
        if (!pendaftaran) {
            redirect(uri: "https://www.google.co.id/" )
        }
        else{
        def statusPendaftaran = pendaftaran.jabatan
            def status = []
            if (statusPendaftaran == "Guru Besar") {
                status = 0
            }
            else{
               status = 6 
            }
        redirect(uri: "http://localhost/statusPelanggan.php?id="+nomorPendaftaran+"&status="+status )
        } 
    }
}
