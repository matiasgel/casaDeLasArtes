package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(EspacioController)
@Mock(Espacio)
class EspacioControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/espacio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.espacioInstanceList.size() == 0
        assert model.espacioInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.espacioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.espacioInstance != null
        assert view == '/espacio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/espacio/show/1'
        assert controller.flash.message != null
        assert Espacio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/espacio/list'


        populateValidParams(params)
        def espacio = new Espacio(params)

        assert espacio.save() != null

        params.id = espacio.id

        def model = controller.show()

        assert model.espacioInstance == espacio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/espacio/list'


        populateValidParams(params)
        def espacio = new Espacio(params)

        assert espacio.save() != null

        params.id = espacio.id

        def model = controller.edit()

        assert model.espacioInstance == espacio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/espacio/list'

        response.reset()


        populateValidParams(params)
        def espacio = new Espacio(params)

        assert espacio.save() != null

        // test invalid parameters in update
        params.id = espacio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/espacio/edit"
        assert model.espacioInstance != null

        espacio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/espacio/show/$espacio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        espacio.clearErrors()

        populateValidParams(params)
        params.id = espacio.id
        params.version = -1
        controller.update()

        assert view == "/espacio/edit"
        assert model.espacioInstance != null
        assert model.espacioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/espacio/list'

        response.reset()

        populateValidParams(params)
        def espacio = new Espacio(params)

        assert espacio.save() != null
        assert Espacio.count() == 1

        params.id = espacio.id

        controller.delete()

        assert Espacio.count() == 0
        assert Espacio.get(espacio.id) == null
        assert response.redirectedUrl == '/espacio/list'
    }
}
