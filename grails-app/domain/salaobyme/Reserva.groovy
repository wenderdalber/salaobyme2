package salaobyme

class Reserva {

    int situacao
    Date dataReserva
    Usuario usuario
    Servico servico
    Horario horario
    Salao salao

    static hasOne = [Usuario, Servico, Salao, Horario]
    static belongsTo = [Usuario]

    static constraints = {
    }
}
