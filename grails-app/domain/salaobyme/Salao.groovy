package salaobyme

class Salao {

    String nome
    String cnpj
    Endereco endereco
    Proprietario proprietario

    static belongsTo = [Proprietario, Endereco]

    static constraints = {
        nome nullable:false, blank:false
        cnpj nullable:false, blank:false
    }
}