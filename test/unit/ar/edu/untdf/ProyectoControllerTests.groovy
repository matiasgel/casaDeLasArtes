package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(ProyectoController)
@Mock(Proyecto)
class ProyectoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/proyecto/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.proyectoInstanceList.size() == 0
        assert model.proyectoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.proyectoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.proyectoInstance != null
        assert view == '/proyecto/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/proyecto/show/1'
        assert controller.flash.message != null
        assert Proyecto.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/proyecto/list'


        populateValidParams(params)
        def proyecto = new Proyecto(params)

        assert proyecto.save() != null

        params.id = proyecto.id

        def model = controller.show()

        assert model.proyectoInstance == proyecto
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/proyecto/list'


        populateValidParams(params)
        def proyecto = new Proyecto(params)

        assert proyecto.save() != null

        params.id = proyecto.id

        def model = controller.edit()

        assert model.proyectoInstance == proyecto
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/proyecto/list'

        response.reset()


        populateValidParams(params)
        def proyecto = new Proyecto(params)

        assert proyecto.save() != null

        // test invalid parameters in update
        params.id = proyecto.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/proyecto/edit"
        assert model.proyectoInstance != null

        proyecto.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/proyecto/show/$proyecto.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        proyecto.clearErrors()

        populateValidParams(params)
        params.id = proyecto.id
        params.version = -1
        controller.update()

        assert view == "/proyecto/edit"
        assert model.proyectoInstance != null
        assert model.proyectoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/proyecto/list'

        response.reset()

        populateValidParams(params)
        def proyecto = new Proyecto(params)

        assert proyecto.save() != null
        assert Proyecto.count() == 1

        params.id = proyecto.id

        controller.delete()

        assert Proyecto.count() == 0
        assert Proyecto.get(proyecto.id) == null
        assert response.redirectedUrl == '/proyecto/list'
    }
}
