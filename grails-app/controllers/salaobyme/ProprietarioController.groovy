package salaobyme

import org.springframework.dao.DataIntegrityViolationException

class ProprietarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [proprietarioInstanceList: Proprietario.list(params), proprietarioInstanceTotal: Proprietario.count()]
    }

    def create() {
        [proprietarioInstance: new Proprietario(params)]
    }

    def save() {
        def proprietarioInstance = new Proprietario(params)
        if (!proprietarioInstance.save(flush: true)) {
            render(view: "create", model: [proprietarioInstance: proprietarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), proprietarioInstance.id])
        redirect(action: "show", id: proprietarioInstance.id)
    }

    def show(Long id) {
        def proprietarioInstance = Proprietario.get(id)
        if (!proprietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "list")
            return
        }

        [proprietarioInstance: proprietarioInstance]
    }

    def edit(Long id) {
        def proprietarioInstance = Proprietario.get(id)
        if (!proprietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "list")
            return
        }

        [proprietarioInstance: proprietarioInstance]
    }

    def update(Long id, Long version) {
        def proprietarioInstance = Proprietario.get(id)
        if (!proprietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (proprietarioInstance.version > version) {
                proprietarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'proprietario.label', default: 'Proprietario')] as Object[],
                          "Another user has updated this Proprietario while you were editing")
                render(view: "edit", model: [proprietarioInstance: proprietarioInstance])
                return
            }
        }

        proprietarioInstance.properties = params

        if (!proprietarioInstance.save(flush: true)) {
            render(view: "edit", model: [proprietarioInstance: proprietarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), proprietarioInstance.id])
        redirect(action: "show", id: proprietarioInstance.id)
    }

    def delete(Long id) {
        def proprietarioInstance = Proprietario.get(id)
        if (!proprietarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "list")
            return
        }

        try {
            proprietarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'proprietario.label', default: 'Proprietario'), id])
            redirect(action: "show", id: id)
        }
    }
}
