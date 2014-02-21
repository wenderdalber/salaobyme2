package salaobyme

class DiaHorario {

    int status
    List<Dia> dias
    List<Horario> horarios

    static hasMany = [Dia, Horario]

    static constraints = {
    }
}
