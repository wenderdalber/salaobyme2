package salaobyme

class Categoria {

    String nome

    static hasMany = [servicos:Servico]

    static constraints = {
        nome nullable:false, blank:false
    }
}
