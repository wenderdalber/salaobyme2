package salaobyme

class Dia {

    String dia
    Salao salao

    static belongsTo = [Salao]

    static constraints = {
        dia nullable:false, blank:false
    }
}
