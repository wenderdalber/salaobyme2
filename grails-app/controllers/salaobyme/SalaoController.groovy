package salaobyme

import org.springframework.dao.DataIntegrityViolationException

class SalaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [salaoInstanceList: Salao.list(params), salaoInstanceTotal: Salao.count()]
    }

    def create() {
        [salaoInstance: new Salao(params)]
    }

    def save() {
        def salaoInstance = new Salao(params)
        if (!salaoInstance.save(flush: true)) {
            render(view: "create", model: [salaoInstance: salaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'salao.label', default: 'Salao'), salaoInstance.id])
        redirect(action: "show", id: salaoInstance.id)
    }

    def show(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        [salaoInstance: salaoInstance]
    }

    def edit(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        [salaoInstance: salaoInstance]
    }

    def update(Long id, Long version) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (salaoInstance.version > version) {
                salaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'salao.label', default: 'Salao')] as Object[],
                          "Another user has updated this Salao while you were editing")
                render(view: "edit", model: [salaoInstance: salaoInstance])
                return
            }
        }

        salaoInstance.properties = params

        if (!salaoInstance.save(flush: true)) {
            render(view: "edit", model: [salaoInstance: salaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'salao.label', default: 'Salao'), salaoInstance.id])
        redirect(action: "meuSalao", id: salaoInstance.id)
    }

    def delete(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        try {
            salaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "show", id: id)
        }
    }

    def meuSalao(){

        int Idproprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(Idproprietario)
        Salao salao = Salao.findByProprietario(proprietario)

        render(view: "meuSalao", model: [salao:salao])

    }

    def meuServico(){

        int Idproprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(Idproprietario)
        Salao salao = Salao.findByProprietario(proprietario)

        Servico servico = Servico.findBySalao(salao)

        Servico servico2 = Servico.createCriteria().list{

        }

        render(view: "meuServico", model: [servico:servico])
    }
}
