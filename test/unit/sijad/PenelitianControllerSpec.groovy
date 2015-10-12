package sijad



import grails.test.mixin.*
import spock.lang.*

@TestFor(PenelitianController)
@Mock(Penelitian)
class PenelitianControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.penelitianInstanceList
            model.penelitianInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.penelitianInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            def penelitian = new Penelitian()
            penelitian.validate()
            controller.save(penelitian)

        then:"The create view is rendered again with the correct model"
            model.penelitianInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            penelitian = new Penelitian(params)

            controller.save(penelitian)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/penelitian/show/1'
            controller.flash.message != null
            Penelitian.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def penelitian = new Penelitian(params)
            controller.show(penelitian)

        then:"A model is populated containing the domain instance"
            model.penelitianInstance == penelitian
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def penelitian = new Penelitian(params)
            controller.edit(penelitian)

        then:"A model is populated containing the domain instance"
            model.penelitianInstance == penelitian
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/penelitian/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def penelitian = new Penelitian()
            penelitian.validate()
            controller.update(penelitian)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.penelitianInstance == penelitian

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            penelitian = new Penelitian(params).save(flush: true)
            controller.update(penelitian)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/penelitian/show/$penelitian.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/penelitian/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def penelitian = new Penelitian(params).save(flush: true)

        then:"It exists"
            Penelitian.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(penelitian)

        then:"The instance is deleted"
            Penelitian.count() == 0
            response.redirectedUrl == '/penelitian/index'
            flash.message != null
    }
}
