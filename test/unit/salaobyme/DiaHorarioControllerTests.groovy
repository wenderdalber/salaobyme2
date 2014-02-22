package salaobyme



import org.junit.*
import grails.test.mixin.*

@TestFor(DiaHorarioController)
@Mock(DiaHorario)
class DiaHorarioControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/diaHorario/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.diaHorarioInstanceList.size() == 0
        assert model.diaHorarioInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.diaHorarioInstance != null
    }

    void testSave() {
        controller.save()

        assert model.diaHorarioInstance != null
        assert view == '/diaHorario/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/diaHorario/show/1'
        assert controller.flash.message != null
        assert DiaHorario.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/diaHorario/list'

        populateValidParams(params)
        def diaHorario = new DiaHorario(params)

        assert diaHorario.save() != null

        params.id = diaHorario.id

        def model = controller.show()

        assert model.diaHorarioInstance == diaHorario
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/diaHorario/list'

        populateValidParams(params)
        def diaHorario = new DiaHorario(params)

        assert diaHorario.save() != null

        params.id = diaHorario.id

        def model = controller.edit()

        assert model.diaHorarioInstance == diaHorario
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/diaHorario/list'

        response.reset()

        populateValidParams(params)
        def diaHorario = new DiaHorario(params)

        assert diaHorario.save() != null

        // test invalid parameters in update
        params.id = diaHorario.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/diaHorario/edit"
        assert model.diaHorarioInstance != null

        diaHorario.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/diaHorario/show/$diaHorario.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        diaHorario.clearErrors()

        populateValidParams(params)
        params.id = diaHorario.id
        params.version = -1
        controller.update()

        assert view == "/diaHorario/edit"
        assert model.diaHorarioInstance != null
        assert model.diaHorarioInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/diaHorario/list'

        response.reset()

        populateValidParams(params)
        def diaHorario = new DiaHorario(params)

        assert diaHorario.save() != null
        assert DiaHorario.count() == 1

        params.id = diaHorario.id

        controller.delete()

        assert DiaHorario.count() == 0
        assert DiaHorario.get(diaHorario.id) == null
        assert response.redirectedUrl == '/diaHorario/list'
    }
}
