package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(EventoController)
@Mock(Evento)
class EventoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/evento/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.eventoInstanceList.size() == 0
        assert model.eventoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.eventoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.eventoInstance != null
        assert view == '/evento/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/evento/show/1'
        assert controller.flash.message != null
        assert Evento.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/evento/list'


        populateValidParams(params)
        def evento = new Evento(params)

        assert evento.save() != null

        params.id = evento.id

        def model = controller.show()

        assert model.eventoInstance == evento
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/evento/list'


        populateValidParams(params)
        def evento = new Evento(params)

        assert evento.save() != null

        params.id = evento.id

        def model = controller.edit()

        assert model.eventoInstance == evento
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/evento/list'

        response.reset()


        populateValidParams(params)
        def evento = new Evento(params)

        assert evento.save() != null

        // test invalid parameters in update
        params.id = evento.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/evento/edit"
        assert model.eventoInstance != null

        evento.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/evento/show/$evento.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        evento.clearErrors()

        populateValidParams(params)
        params.id = evento.id
        params.version = -1
        controller.update()

        assert view == "/evento/edit"
        assert model.eventoInstance != null
        assert model.eventoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/evento/list'

        response.reset()

        populateValidParams(params)
        def evento = new Evento(params)

        assert evento.save() != null
        assert Evento.count() == 1

        params.id = evento.id

        controller.delete()

        assert Evento.count() == 0
        assert Evento.get(evento.id) == null
        assert response.redirectedUrl == '/evento/list'
    }
}
