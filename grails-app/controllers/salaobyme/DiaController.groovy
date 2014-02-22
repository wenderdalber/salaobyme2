package salaobyme

import org.springframework.dao.DataIntegrityViolationException

class DiaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [diaInstanceList: Dia.list(params), diaInstanceTotal: Dia.count()]
    }

    def create() {
        [diaInstance: new Dia(params)]
    }

    def save() {
        def diaInstance = new Dia(params)
        if (!diaInstance.save(flush: true)) {
            render(view: "create", model: [diaInstance: diaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'dia.label', default: 'Dia'), diaInstance.id])
        redirect(action: "show", id: diaInstance.id)
    }

    def show(Long id) {
        def diaInstance = Dia.get(id)
        if (!diaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "list")
            return
        }

        [diaInstance: diaInstance]
    }

    def edit(Long id) {
        def diaInstance = Dia.get(id)
        if (!diaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "list")
            return
        }

        [diaInstance: diaInstance]
    }

    def update(Long id, Long version) {
        def diaInstance = Dia.get(id)
        if (!diaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (diaInstance.version > version) {
                diaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'dia.label', default: 'Dia')] as Object[],
                          "Another user has updated this Dia while you were editing")
                render(view: "edit", model: [diaInstance: diaInstance])
                return
            }
        }

        diaInstance.properties = params

        if (!diaInstance.save(flush: true)) {
            render(view: "edit", model: [diaInstance: diaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'dia.label', default: 'Dia'), diaInstance.id])
        redirect(action: "show", id: diaInstance.id)
    }

    def delete(Long id) {
        def diaInstance = Dia.get(id)
        if (!diaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "list")
            return
        }

        try {
            diaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'dia.label', default: 'Dia'), id])
            redirect(action: "show", id: id)
        }
    }
}
