package salaobyme

class Usuario {

    String nome
    String email
    String senha
    String Permissao

    static hasMany = [reservas:Reserva]

    static constraints = {
        nome nullable:false, blank:false
        email nullable:false, blank:false, email:true
        senha nullable:false, blank:false
    }
}
