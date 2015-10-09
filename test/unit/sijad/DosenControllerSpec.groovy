package sijad



import grails.test.mixin.*
import spock.lang.*

@TestFor(DosenController)
@Mock(Dosen)
class DosenControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.dosenInstanceList
            model.dosenInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.dosenInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def dosen = new Dosen()
            dosen.validate()
            controller.save(dosen)

        then:"The create view is rendered again with the correct model"
            model.dosenInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            dosen = new Dosen(params)

            controller.save(dosen)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/dosen/show/1'
            controller.flash.message != null
            Dosen.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def dosen = new Dosen(params)
            controller.show(dosen)

        then:"A model is populated containing the domain instance"
            model.dosenInstance == dosen
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def dosen = new Dosen(params)
            controller.edit(dosen)

        then:"A model is populated containing the domain instance"
            model.dosenInstance == dosen
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/dosen/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def dosen = new Dosen()
            dosen.validate()
            controller.update(dosen)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.dosenInstance == dosen

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            dosen = new Dosen(params).save(flush: true)
            controller.update(dosen)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/dosen/show/$dosen.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/dosen/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def dosen = new Dosen(params).save(flush: true)

        then:"It exists"
            Dosen.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(dosen)

        then:"The instance is deleted"
            Dosen.count() == 0
            response.redirectedUrl == '/dosen/index'
            flash.message != null
    }
}
