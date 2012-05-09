package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(InstitucionController)
@Mock(Institucion)
class InstitucionControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/institucion/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.institucionInstanceList.size() == 0
        assert model.institucionInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.institucionInstance != null
    }

    void testSave() {
        controller.save()

        assert model.institucionInstance != null
        assert view == '/institucion/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/institucion/show/1'
        assert controller.flash.message != null
        assert Institucion.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/institucion/list'


        populateValidParams(params)
        def institucion = new Institucion(params)

        assert institucion.save() != null

        params.id = institucion.id

        def model = controller.show()

        assert model.institucionInstance == institucion
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/institucion/list'


        populateValidParams(params)
        def institucion = new Institucion(params)

        assert institucion.save() != null

        params.id = institucion.id

        def model = controller.edit()

        assert model.institucionInstance == institucion
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/institucion/list'

        response.reset()


        populateValidParams(params)
        def institucion = new Institucion(params)

        assert institucion.save() != null

        // test invalid parameters in update
        params.id = institucion.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/institucion/edit"
        assert model.institucionInstance != null

        institucion.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/institucion/show/$institucion.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        institucion.clearErrors()

        populateValidParams(params)
        params.id = institucion.id
        params.version = -1
        controller.update()

        assert view == "/institucion/edit"
        assert model.institucionInstance != null
        assert model.institucionInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/institucion/list'

        response.reset()

        populateValidParams(params)
        def institucion = new Institucion(params)

        assert institucion.save() != null
        assert Institucion.count() == 1

        params.id = institucion.id

        controller.delete()

        assert Institucion.count() == 0
        assert Institucion.get(institucion.id) == null
        assert response.redirectedUrl == '/institucion/list'
    }
}
