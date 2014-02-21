package salaobyme

class Endereco {

    String logradouro
    int numero
    String bairro
    String cep
    String cidade
    String estado

    static constraints = {
        logradouro nullable:false, blank: false
        numero nullable:false, blank:false
        bairro nullable:false, blank:false
        cidade nullable:false, blank:false
        estado nullable:false, blank:false
    }
}
