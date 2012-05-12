package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(ContactoController)
@Mock(Contacto)
class ContactoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contacto/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contactoInstanceList.size() == 0
        assert model.contactoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.contactoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contactoInstance != null
        assert view == '/contacto/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contacto/show/1'
        assert controller.flash.message != null
        assert Contacto.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contacto/list'


        populateValidParams(params)
        def contacto = new Contacto(params)

        assert contacto.save() != null

        params.id = contacto.id

        def model = controller.show()

        assert model.contactoInstance == contacto
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contacto/list'


        populateValidParams(params)
        def contacto = new Contacto(params)

        assert contacto.save() != null

        params.id = contacto.id

        def model = controller.edit()

        assert model.contactoInstance == contacto
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contacto/list'

        response.reset()


        populateValidParams(params)
        def contacto = new Contacto(params)

        assert contacto.save() != null

        // test invalid parameters in update
        params.id = contacto.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contacto/edit"
        assert model.contactoInstance != null

        contacto.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contacto/show/$contacto.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contacto.clearErrors()

        populateValidParams(params)
        params.id = contacto.id
        params.version = -1
        controller.update()

        assert view == "/contacto/edit"
        assert model.contactoInstance != null
        assert model.contactoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contacto/list'

        response.reset()

        populateValidParams(params)
        def contacto = new Contacto(params)

        assert contacto.save() != null
        assert Contacto.count() == 1

        params.id = contacto.id

        controller.delete()

        assert Contacto.count() == 0
        assert Contacto.get(contacto.id) == null
        assert response.redirectedUrl == '/contacto/list'
    }
}
