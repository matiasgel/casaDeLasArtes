package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(ObraController)
@Mock(Obra)
class ObraControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/obra/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.obraInstanceList.size() == 0
        assert model.obraInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.obraInstance != null
    }

    void testSave() {
        controller.save()

        assert model.obraInstance != null
        assert view == '/obra/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/obra/show/1'
        assert controller.flash.message != null
        assert Obra.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/obra/list'


        populateValidParams(params)
        def obra = new Obra(params)

        assert obra.save() != null

        params.id = obra.id

        def model = controller.show()

        assert model.obraInstance == obra
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/obra/list'


        populateValidParams(params)
        def obra = new Obra(params)

        assert obra.save() != null

        params.id = obra.id

        def model = controller.edit()

        assert model.obraInstance == obra
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/obra/list'

        response.reset()


        populateValidParams(params)
        def obra = new Obra(params)

        assert obra.save() != null

        // test invalid parameters in update
        params.id = obra.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/obra/edit"
        assert model.obraInstance != null

        obra.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/obra/show/$obra.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        obra.clearErrors()

        populateValidParams(params)
        params.id = obra.id
        params.version = -1
        controller.update()

        assert view == "/obra/edit"
        assert model.obraInstance != null
        assert model.obraInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/obra/list'

        response.reset()

        populateValidParams(params)
        def obra = new Obra(params)

        assert obra.save() != null
        assert Obra.count() == 1

        params.id = obra.id

        controller.delete()

        assert Obra.count() == 0
        assert Obra.get(obra.id) == null
        assert response.redirectedUrl == '/obra/list'
    }
}
