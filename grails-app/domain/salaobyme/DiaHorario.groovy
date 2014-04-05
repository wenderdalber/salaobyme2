package salaobyme

class DiaHorario {

    int status
    Dia dia
    Horario horario

    static constraints = {
        dia lazy: true
        horario lazy: true
    }
}
