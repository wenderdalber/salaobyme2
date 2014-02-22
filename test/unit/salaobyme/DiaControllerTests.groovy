package salaobyme



import org.junit.*
import grails.test.mixin.*

@TestFor(DiaController)
@Mock(Dia)
class DiaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/dia/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.diaInstanceList.size() == 0
        assert model.diaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.diaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.diaInstance != null
        assert view == '/dia/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/dia/show/1'
        assert controller.flash.message != null
        assert Dia.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/dia/list'

        populateValidParams(params)
        def dia = new Dia(params)

        assert dia.save() != null

        params.id = dia.id

        def model = controller.show()

        assert model.diaInstance == dia
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/dia/list'

        populateValidParams(params)
        def dia = new Dia(params)

        assert dia.save() != null

        params.id = dia.id

        def model = controller.edit()

        assert model.diaInstance == dia
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/dia/list'

        response.reset()

        populateValidParams(params)
        def dia = new Dia(params)

        assert dia.save() != null

        // test invalid parameters in update
        params.id = dia.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/dia/edit"
        assert model.diaInstance != null

        dia.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/dia/show/$dia.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        dia.clearErrors()

        populateValidParams(params)
        params.id = dia.id
        params.version = -1
        controller.update()

        assert view == "/dia/edit"
        assert model.diaInstance != null
        assert model.diaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/dia/list'

        response.reset()

        populateValidParams(params)
        def dia = new Dia(params)

        assert dia.save() != null
        assert Dia.count() == 1

        params.id = dia.id

        controller.delete()

        assert Dia.count() == 0
        assert Dia.get(dia.id) == null
        assert response.redirectedUrl == '/dia/list'
    }
}
