package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(RegistrableController)
@Mock(Registrable)
class RegistrableControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/registrable/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.registrableInstanceList.size() == 0
        assert model.registrableInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.registrableInstance != null
    }

    void testSave() {
        controller.save()

        assert model.registrableInstance != null
        assert view == '/registrable/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/registrable/show/1'
        assert controller.flash.message != null
        assert Registrable.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/registrable/list'


        populateValidParams(params)
        def registrable = new Registrable(params)

        assert registrable.save() != null

        params.id = registrable.id

        def model = controller.show()

        assert model.registrableInstance == registrable
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/registrable/list'


        populateValidParams(params)
        def registrable = new Registrable(params)

        assert registrable.save() != null

        params.id = registrable.id

        def model = controller.edit()

        assert model.registrableInstance == registrable
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/registrable/list'

        response.reset()


        populateValidParams(params)
        def registrable = new Registrable(params)

        assert registrable.save() != null

        // test invalid parameters in update
        params.id = registrable.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/registrable/edit"
        assert model.registrableInstance != null

        registrable.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/registrable/show/$registrable.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        registrable.clearErrors()

        populateValidParams(params)
        params.id = registrable.id
        params.version = -1
        controller.update()

        assert view == "/registrable/edit"
        assert model.registrableInstance != null
        assert model.registrableInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/registrable/list'

        response.reset()

        populateValidParams(params)
        def registrable = new Registrable(params)

        assert registrable.save() != null
        assert Registrable.count() == 1

        params.id = registrable.id

        controller.delete()

        assert Registrable.count() == 0
        assert Registrable.get(registrable.id) == null
        assert response.redirectedUrl == '/registrable/list'
    }
}
