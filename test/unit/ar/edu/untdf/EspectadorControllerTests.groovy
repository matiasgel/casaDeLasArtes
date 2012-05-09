package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(EspectadorController)
@Mock(Espectador)
class EspectadorControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/espectador/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.espectadorInstanceList.size() == 0
        assert model.espectadorInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.espectadorInstance != null
    }

    void testSave() {
        controller.save()

        assert model.espectadorInstance != null
        assert view == '/espectador/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/espectador/show/1'
        assert controller.flash.message != null
        assert Espectador.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/espectador/list'


        populateValidParams(params)
        def espectador = new Espectador(params)

        assert espectador.save() != null

        params.id = espectador.id

        def model = controller.show()

        assert model.espectadorInstance == espectador
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/espectador/list'


        populateValidParams(params)
        def espectador = new Espectador(params)

        assert espectador.save() != null

        params.id = espectador.id

        def model = controller.edit()

        assert model.espectadorInstance == espectador
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/espectador/list'

        response.reset()


        populateValidParams(params)
        def espectador = new Espectador(params)

        assert espectador.save() != null

        // test invalid parameters in update
        params.id = espectador.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/espectador/edit"
        assert model.espectadorInstance != null

        espectador.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/espectador/show/$espectador.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        espectador.clearErrors()

        populateValidParams(params)
        params.id = espectador.id
        params.version = -1
        controller.update()

        assert view == "/espectador/edit"
        assert model.espectadorInstance != null
        assert model.espectadorInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/espectador/list'

        response.reset()

        populateValidParams(params)
        def espectador = new Espectador(params)

        assert espectador.save() != null
        assert Espectador.count() == 1

        params.id = espectador.id

        controller.delete()

        assert Espectador.count() == 0
        assert Espectador.get(espectador.id) == null
        assert response.redirectedUrl == '/espectador/list'
    }
}
