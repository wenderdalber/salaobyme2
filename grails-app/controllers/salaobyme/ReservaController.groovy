package salaobyme

import org.springframework.dao.DataIntegrityViolationException

class ReservaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [reservaInstanceList: Reserva.list(params), reservaInstanceTotal: Reserva.count()]
    }

    def create() {
        [reservaInstance: new Reserva(params)]
    }

    def save() {
        def reservaInstance = new Reserva(params)
        if (!reservaInstance.save(flush: true)) {
            render(view: "create", model: [reservaInstance: reservaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'reserva.label', default: 'Reserva'), reservaInstance.id])
        redirect(action: "show", id: reservaInstance.id)
    }

    def show(Long id) {
        def reservaInstance = Reserva.get(id)
        if (!reservaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "list")
            return
        }

        [reservaInstance: reservaInstance]
    }

    def edit(Long id) {
        def reservaInstance = Reserva.get(id)
        if (!reservaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "list")
            return
        }

        [reservaInstance: reservaInstance]
    }

    def update(Long id, Long version) {
        def reservaInstance = Reserva.get(id)
        if (!reservaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (reservaInstance.version > version) {
                reservaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'reserva.label', default: 'Reserva')] as Object[],
                          "Another user has updated this Reserva while you were editing")
                render(view: "edit", model: [reservaInstance: reservaInstance])
                return
            }
        }

        reservaInstance.properties = params

        if (!reservaInstance.save(flush: true)) {
            render(view: "edit", model: [reservaInstance: reservaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'reserva.label', default: 'Reserva'), reservaInstance.id])
        redirect(action: "show", id: reservaInstance.id)
    }

    def delete(Long id) {
        def reservaInstance = Reserva.get(id)
        if (!reservaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "list")
            return
        }

        try {
            reservaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'reserva.label', default: 'Reserva'), id])
            redirect(action: "show", id: id)
        }
    }

    def horario(){

        Servico servico = Servico.get(1)
        Salao salao = Salao.get(1)


        def diasExtenso=[1:"Domingo", 2:"Segunda", 3:"Terça", 4:"Quarta", 5:"Quinta",6:"Sexta",7:"Sábado"]
        def today = new Date()
        def datas = [today, today.plus(1), today.plus(2), today.plus(3), today.plus(4), today.plus(5), today.plus(6)]
        def dia = new Date().toCalendar().get(Calendar.DAY_OF_WEEK)
        def todosHorarios = ["08:00", "08:30", "09:00", "09:30", "10:00"]
        def reservas = Reserva.findAllByServicoAndSalaoAndSituacao(servico,salao,Reserva.ATIVA)

        def dataHoraReservas = []
        reservas.each{ reserva ->
            dataHoraReservas += reserva.dataReserva.format("dd/MM/yyyy")+" "+reserva.diaHorario.horario.horaInicio
        }
        println "Reservas"
        println dataHoraReservas

        def horariosOcupados = [:]
        datas.each{ data ->
            todosHorarios.each{ hora ->
                println data.format("dd/MM/yyyy")+" "+hora+"--------------"
                dataHoraReservas.each{println it+"--"}
                println dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})
             if(dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})!= null)
             {
                 print "agora vai!!"
                 horariosOcupados+=[(data.format("dd/MM/yyyy")+" "+hora):true]
             }
            }
        }


        render(view: "/reserva/horario",model :[datas:datas, todosHorarios:todosHorarios, reservas:reservas, horariosOcupados:horariosOcupados] )
    }
}
