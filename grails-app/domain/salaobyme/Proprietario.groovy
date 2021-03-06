package salaobyme

class Proprietario extends Usuario {

    String cpf
    String telefone
    String celular

    static hasMany = [saloes:Salao]

    static constraints = {
        cpf nullable:false, blank:false
        telefone nullable:false, blank:false
        celular nullable:false, blank:false
    }
}
