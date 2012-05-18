package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(NovedadesController)
@Mock(Novedades)
class NovedadesControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/novedades/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.novedadesInstanceList.size() == 0
        assert model.novedadesInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.novedadesInstance != null
    }

    void testSave() {
        controller.save()

        assert model.novedadesInstance != null
        assert view == '/novedades/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/novedades/show/1'
        assert controller.flash.message != null
        assert Novedades.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/novedades/list'


        populateValidParams(params)
        def novedades = new Novedades(params)

        assert novedades.save() != null

        params.id = novedades.id

        def model = controller.show()

        assert model.novedadesInstance == novedades
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/novedades/list'


        populateValidParams(params)
        def novedades = new Novedades(params)

        assert novedades.save() != null

        params.id = novedades.id

        def model = controller.edit()

        assert model.novedadesInstance == novedades
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/novedades/list'

        response.reset()


        populateValidParams(params)
        def novedades = new Novedades(params)

        assert novedades.save() != null

        // test invalid parameters in update
        params.id = novedades.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/novedades/edit"
        assert model.novedadesInstance != null

        novedades.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/novedades/show/$novedades.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        novedades.clearErrors()

        populateValidParams(params)
        params.id = novedades.id
        params.version = -1
        controller.update()

        assert view == "/novedades/edit"
        assert model.novedadesInstance != null
        assert model.novedadesInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/novedades/list'

        response.reset()

        populateValidParams(params)
        def novedades = new Novedades(params)

        assert novedades.save() != null
        assert Novedades.count() == 1

        params.id = novedades.id

        controller.delete()

        assert Novedades.count() == 0
        assert Novedades.get(novedades.id) == null
        assert response.redirectedUrl == '/novedades/list'
    }
}
