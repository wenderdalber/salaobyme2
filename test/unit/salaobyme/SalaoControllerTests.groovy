package salaobyme



import org.junit.*
import grails.test.mixin.*

@TestFor(SalaoController)
@Mock(Salao)
class SalaoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/salao/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.salaoInstanceList.size() == 0
        assert model.salaoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.salaoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.salaoInstance != null
        assert view == '/salao/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/salao/show/1'
        assert controller.flash.message != null
        assert Salao.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/salao/list'

        populateValidParams(params)
        def salao = new Salao(params)

        assert salao.save() != null

        params.id = salao.id

        def model = controller.show()

        assert model.salaoInstance == salao
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/salao/list'

        populateValidParams(params)
        def salao = new Salao(params)

        assert salao.save() != null

        params.id = salao.id

        def model = controller.edit()

        assert model.salaoInstance == salao
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/salao/list'

        response.reset()

        populateValidParams(params)
        def salao = new Salao(params)

        assert salao.save() != null

        // test invalid parameters in update
        params.id = salao.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/salao/edit"
        assert model.salaoInstance != null

        salao.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/salao/show/$salao.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        salao.clearErrors()

        populateValidParams(params)
        params.id = salao.id
        params.version = -1
        controller.update()

        assert view == "/salao/edit"
        assert model.salaoInstance != null
        assert model.salaoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/salao/list'

        response.reset()

        populateValidParams(params)
        def salao = new Salao(params)

        assert salao.save() != null
        assert Salao.count() == 1

        params.id = salao.id

        controller.delete()

        assert Salao.count() == 0
        assert Salao.get(salao.id) == null
        assert response.redirectedUrl == '/salao/list'
    }
}
