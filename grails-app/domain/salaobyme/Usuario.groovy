package salaobyme

class Usuario {

    String nome
    String email
    String senha

    static hasMany = [reservas:Reserva]

    static constraints = {
        nome nullable:false, blank:false
        email nullable:false, blank:false, email:true
        senha nullable:false, blank:false
    }
}
