package salaobyme

class Reserva {

    static final CANCELADA = 0
    static final EFETUADA = 1
    static final ATIVA = 2

    int situacao
    Date dataReserva
    Usuario usuario
    Servico servico
    DiaHorario diaHorario
    Salao salao

    static belongsTo = [Usuario]

    static constraints = {
    }
}
