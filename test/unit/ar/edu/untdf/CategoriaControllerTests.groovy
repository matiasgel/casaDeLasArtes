package ar.edu.untdf



import org.junit.*
import grails.test.mixin.*

@TestFor(CategoriaController)
@Mock(Categoria)
class CategoriaControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/categoria/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.categoriaInstanceList.size() == 0
        assert model.categoriaInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.categoriaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.categoriaInstance != null
        assert view == '/categoria/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/categoria/show/1'
        assert controller.flash.message != null
        assert Categoria.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/categoria/list'


        populateValidParams(params)
        def categoria = new Categoria(params)

        assert categoria.save() != null

        params.id = categoria.id

        def model = controller.show()

        assert model.categoriaInstance == categoria
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/categoria/list'


        populateValidParams(params)
        def categoria = new Categoria(params)

        assert categoria.save() != null

        params.id = categoria.id

        def model = controller.edit()

        assert model.categoriaInstance == categoria
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/categoria/list'

        response.reset()


        populateValidParams(params)
        def categoria = new Categoria(params)

        assert categoria.save() != null

        // test invalid parameters in update
        params.id = categoria.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/categoria/edit"
        assert model.categoriaInstance != null

        categoria.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/categoria/show/$categoria.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        categoria.clearErrors()

        populateValidParams(params)
        params.id = categoria.id
        params.version = -1
        controller.update()

        assert view == "/categoria/edit"
        assert model.categoriaInstance != null
        assert model.categoriaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/categoria/list'

        response.reset()

        populateValidParams(params)
        def categoria = new Categoria(params)

        assert categoria.save() != null
        assert Categoria.count() == 1

        params.id = categoria.id

        controller.delete()

        assert Categoria.count() == 0
        assert Categoria.get(categoria.id) == null
        assert response.redirectedUrl == '/categoria/list'
    }
}
