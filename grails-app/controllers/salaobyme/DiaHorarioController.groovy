package salaobyme

import org.springframework.dao.DataIntegrityViolationException

class DiaHorarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [diaHorarioInstanceList: DiaHorario.list(params), diaHorarioInstanceTotal: DiaHorario.count()]
    }

    def create() {
        [diaHorarioInstance: new DiaHorario(params)]
    }

    def save() {
        def diaHorarioInstance = new DiaHorario(params)
        if (!diaHorarioInstance.save(flush: true)) {
            render(view: "create", model: [diaHorarioInstance: diaHorarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), diaHorarioInstance.id])
        redirect(action: "show", id: diaHorarioInstance.id)
    }

    def show(Long id) {
        def diaHorarioInstance = DiaHorario.get(id)
        if (!diaHorarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "list")
            return
        }

        [diaHorarioInstance: diaHorarioInstance]
    }

    def edit(Long id) {
        def diaHorarioInstance = DiaHorario.get(id)
        if (!diaHorarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "list")
            return
        }

        [diaHorarioInstance: diaHorarioInstance]
    }

    def update(Long id, Long version) {
        def diaHorarioInstance = DiaHorario.get(id)
        if (!diaHorarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (diaHorarioInstance.version > version) {
                diaHorarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'diaHorario.label', default: 'DiaHorario')] as Object[],
                          "Another user has updated this DiaHorario while you were editing")
                render(view: "edit", model: [diaHorarioInstance: diaHorarioInstance])
                return
            }
        }

        diaHorarioInstance.properties = params

        if (!diaHorarioInstance.save(flush: true)) {
            render(view: "edit", model: [diaHorarioInstance: diaHorarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), diaHorarioInstance.id])
        redirect(action: "show", id: diaHorarioInstance.id)
    }

    def delete(Long id) {
        def diaHorarioInstance = DiaHorario.get(id)
        if (!diaHorarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "list")
            return
        }

        try {
            diaHorarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'diaHorario.label', default: 'DiaHorario'), id])
            redirect(action: "show", id: id)
        }
    }
}
