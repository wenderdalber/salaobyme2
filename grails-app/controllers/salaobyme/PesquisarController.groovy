package salaobyme

import org.hibernate.criterion.CriteriaSpecification

class PesquisarController {

    def index() {

        Date date = new Date()
        date.getAt(Calendar.DAY_OF_WEEK)

        def dayOfMonth = date.getAt(Calendar.DAY_OF_WEEK)
    }

    def buscar(String pesquisar) {

        def arrayPalavras = params.pesquisar.split(" ")
        def pesquisa = arrayPalavras.collect{palavra ->
            (palavra.length() > 3)? palavra : null
        }

        def saloes = Salao.createCriteria().listDistinct{
            createAlias("servicos","servico")
            createAlias("servico.categoria","categoria")
            createAlias("endereco", "endereco")

            or{
                pesquisa.each { palavra ->
                    or{
                        ilike("nome","%${palavra}%")
                        ilike("servico.descricao","%${palavra}%")
                        ilike("categoria.nome","%${palavra}%")

                        ilike("endereco.logradouro","%${palavra}%")
                        ilike("endereco.bairro","%${palavra}%")
                        ilike("endereco.cidade","%${palavra}%")
                        ilike("endereco.estado","%${palavra}%")

                    }
                }

            }

        }
        render(view: "index", model: [saloes:saloes])
    }

    def buscarServicos(Long id){
        print "-----------------------------------------         "+id+"       ======================"
        def salao = Salao.findById(id)

        def lista = salao.servicos
        Servico servico = Servico.get(1)



        /*definindo de acordo com o número do dia o nome a ser exibido*/
        def diasExtenso=[1:"Domingo", 2:"Segunda", 3:"Terça", 4:"Quarta", 5:"Quinta",6:"Sexta",7:"Sábado"]

        /*pega a data do dia*/
        def today = new Date()
        /*pega a data do dia, adiciona mais um dia e coloca numa lista de Datas. Ele será exibido
        * no div de horários*/
        def datas = [today, today.plus(1), today.plus(2), today.plus(3), today.plus(4), today.plus(5), today.plus(6)]
        /*pega o dia da semana, por número*/
        def dia = new Date().toCalendar().get(Calendar.DAY_OF_WEEK)
        /*pega os horários*/
        def todosHorarios = ["08:00", "08:30", "09:00", "09:30", "10:00"]
        /*Faz uma busca nas reservas de acordo com o serviço e com o salão desse serviço*/
        def reservas = Reserva.findAllByServicoAndSalaoAndSituacao(servico,salao,Reserva.ATIVA)

        /*Preenche uma lista com as datas e horas que retornanaram da reserva*/
        def dataHoraReservas = []

        /*guarda a data hora de cada reserva */
        reservas.each{ reserva ->
            dataHoraReservas += reserva.dataReserva.format("dd/MM/yyyy")+" "+reserva.diaHorario.horario.horaInicio
        }
        /*println "Reservas"
        println dataHoraReservas*/

        def horariosOcupados = [:]
        /*Pega as datas e pesquisa se aquela data e aquele horário está ativo ou não.*/
        datas.each{ data ->
            todosHorarios.each{ hora ->
                /*println data.format("dd/MM/yyyy")+" "+hora+"--------------"*/
                dataHoraReservas.each{println it+"--"}
                /*println dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})*/

                /*Se a lista de dataHoraReservas for diferente de null, ele entra no if
                * e envia que horariosOcupados é true. Na lista, será impresso como Ocupado.*/
                if(dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})!= null)
                {
                    horariosOcupados+=[(data.format("dd/MM/yyyy")+" "+hora):true]
                }
            }
        }


        //render(view: "/reserva/horario",model :[datas:datas, todosHorarios:todosHorarios, reservas:reservas, horariosOcupados:horariosOcupados] )

        render(view: "/pesquisar/listaSaloes.gsp", model :[lista:lista, datas:datas, todosHorarios:todosHorarios, reservas:reservas, horariosOcupados:horariosOcupados])
        //render(view: "listaSaloes", model:[lista:lista, ])
    }

    def listarSaloes(int id){

        def salao = Salao.findById(id)

        def lista = salao.servicos
        Servico servico = Servico.get(1)

        /*definindo de acordo com o número do dia o nome a ser exibido*/
        def diasExtenso=[1:"Domingo", 2:"Segunda", 3:"Terça", 4:"Quarta", 5:"Quinta",6:"Sexta",7:"Sábado"]

        /*pega a data do dia*/
        def today = new Date()
        /*pega a data do dia, adiciona mais um dia e coloca numa lista de Datas. Ele será exibido
        * no div de horários*/
        def datas = [today, today.plus(1), today.plus(2), today.plus(3), today.plus(4), today.plus(5), today.plus(6)]
        /*pega o dia da semana, por número*/
        def dia = new Date().toCalendar().get(Calendar.DAY_OF_WEEK)
        /*pega os horários*/
        def todosHorarios = ["08:00", "08:30", "09:00", "09:30", "10:00"]
        /*Faz uma busca nas reservas de acordo com o serviço e com o salão desse serviço*/
        def reservas = Reserva.findAllByServicoAndSalaoAndSituacao(servico,salao,Reserva.ATIVA)

        /*Preenche uma lista com as datas e horas que retornanaram da reserva*/
        def dataHoraReservas = []

        /*guarda a data hora de cada reserva */
        reservas.each{ reserva ->
            dataHoraReservas += reserva.dataReserva.format("dd/MM/yyyy")+" "+reserva.diaHorario.horario.horaInicio
        }
        /*println "Reservas"
        println dataHoraReservas*/

        def horariosOcupados = [:]
        /*Pega as datas e pesquisa se aquela data e aquele horário está ativo ou não.*/
        datas.each{ data ->
            todosHorarios.each{ hora ->
                /*println data.format("dd/MM/yyyy")+" "+hora+"--------------"*/
                dataHoraReservas.each{println it+"--"}
                /*println dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})*/

                /*Se a lista de dataHoraReservas for diferente de null, ele entra no if
                * e envia que horariosOcupados é true. Na lista, será impresso como Ocupado.*/
                if(dataHoraReservas.find({it==data.format("dd/MM/yyyy")+" "+hora})!= null)
                {
                    horariosOcupados+=[(data.format("dd/MM/yyyy")+" "+hora):true]
                }
            }
        }


        //render(view: "/reserva/horario",model :[datas:datas, todosHorarios:todosHorarios, reservas:reservas, horariosOcupados:horariosOcupados] )

        render(view: "/pesquisar/listaSaloes.gsp", model :[lista:lista, datas:datas, todosHorarios:todosHorarios, reservas:reservas, horariosOcupados:horariosOcupados])
        //render(view: "listaSaloes", model:[lista:lista, ])
    }
}
