package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(ArtistaController)
@Mock(Artista)
class ArtistaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/artista/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.artistaInstanceList.size() == 0
        assert model.artistaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.artistaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.artistaInstance != null
        assert view == '/artista/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/artista/show/1'
        assert controller.flash.message != null
        assert Artista.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/artista/list'


        populateValidParams(params)
        def artista = new Artista(params)

        assert artista.save() != null

        params.id = artista.id

        def model = controller.show()

        assert model.artistaInstance == artista
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/artista/list'


        populateValidParams(params)
        def artista = new Artista(params)

        assert artista.save() != null

        params.id = artista.id

        def model = controller.edit()

        assert model.artistaInstance == artista
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/artista/list'

        response.reset()


        populateValidParams(params)
        def artista = new Artista(params)

        assert artista.save() != null

        // test invalid parameters in update
        params.id = artista.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/artista/edit"
        assert model.artistaInstance != null

        artista.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/artista/show/$artista.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        artista.clearErrors()

        populateValidParams(params)
        params.id = artista.id
        params.version = -1
        controller.update()

        assert view == "/artista/edit"
        assert model.artistaInstance != null
        assert model.artistaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/artista/list'

        response.reset()

        populateValidParams(params)
        def artista = new Artista(params)

        assert artista.save() != null
        assert Artista.count() == 1

        params.id = artista.id

        controller.delete()

        assert Artista.count() == 0
        assert Artista.get(artista.id) == null
        assert response.redirectedUrl == '/artista/list'
    }
}
