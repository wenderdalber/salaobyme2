package salaobyme

class Servico {


    String descricao
    boolean status
    Double preco
    Categoria categoria
    int tempoServico

    static belongsTo = [Categoria]

    static constraints = {
        descricao nullable:false, blank:false
        preco nullable:false, blank:false
    }

    String toString() {
        return descricao;
    }
}
