package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(TipoEspacioController)
@Mock(TipoEspacio)
class TipoEspacioControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/tipoEspacio/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.tipoEspacioInstanceList.size() == 0
        assert model.tipoEspacioInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.tipoEspacioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.tipoEspacioInstance != null
        assert view == '/tipoEspacio/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/tipoEspacio/show/1'
        assert controller.flash.message != null
        assert TipoEspacio.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoEspacio/list'


        populateValidParams(params)
        def tipoEspacio = new TipoEspacio(params)

        assert tipoEspacio.save() != null

        params.id = tipoEspacio.id

        def model = controller.show()

        assert model.tipoEspacioInstance == tipoEspacio
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoEspacio/list'


        populateValidParams(params)
        def tipoEspacio = new TipoEspacio(params)

        assert tipoEspacio.save() != null

        params.id = tipoEspacio.id

        def model = controller.edit()

        assert model.tipoEspacioInstance == tipoEspacio
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/tipoEspacio/list'

        response.reset()


        populateValidParams(params)
        def tipoEspacio = new TipoEspacio(params)

        assert tipoEspacio.save() != null

        // test invalid parameters in update
        params.id = tipoEspacio.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/tipoEspacio/edit"
        assert model.tipoEspacioInstance != null

        tipoEspacio.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/tipoEspacio/show/$tipoEspacio.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        tipoEspacio.clearErrors()

        populateValidParams(params)
        params.id = tipoEspacio.id
        params.version = -1
        controller.update()

        assert view == "/tipoEspacio/edit"
        assert model.tipoEspacioInstance != null
        assert model.tipoEspacioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/tipoEspacio/list'

        response.reset()

        populateValidParams(params)
        def tipoEspacio = new TipoEspacio(params)

        assert tipoEspacio.save() != null
        assert TipoEspacio.count() == 1

        params.id = tipoEspacio.id

        controller.delete()

        assert TipoEspacio.count() == 0
        assert TipoEspacio.get(tipoEspacio.id) == null
        assert response.redirectedUrl == '/tipoEspacio/list'
    }
}
