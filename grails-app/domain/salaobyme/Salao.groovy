package salaobyme

class Salao {

    String nome
    String cnpj
    String descricao
    Endereco endereco
    Proprietario proprietario

    static hasMany = [servicos:Servico]
    static belongsTo = [Proprietario]

    static constraints = {
        nome nullable:false, blank:false
        cnpj nullable:false, blank:false
        endereco nullable:true
        descricao nullable:true
    }

    String toString() {
        return descricao;
    }
}
