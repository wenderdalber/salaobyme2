package salaobyme

import com.sun.xml.internal.org.jvnet.mimepull.MIMEMessage
import org.apache.tomcat.jni.Address
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.mail.javamail.InternetAddressEditor

class UsuarioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def Admin(){
        //redirect(action: "Admin")
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
    }

    def create() {
        [usuarioInstance: new Usuario(params)]
    }

    def save() {
        def usuarioInstance = new Usuario(params)
        if (!usuarioInstance.save(flush: true)) {
            render(view: "create", model: [usuarioInstance: usuarioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
        redirect(action: "show", id: usuarioInstance.id)
    }

    def show(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        [usuarioInstance: usuarioInstance]
    }

    def edit(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        [usuarioInstance: usuarioInstance]
    }

    def update(Long id, Long version) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (usuarioInstance.version > version) {
                usuarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'usuario.label', default: 'Usuario')] as Object[],
                          "Another user has updated this Usuario while you were editing")
                render(view: "edit", model: [usuarioInstance: usuarioInstance])
                return
            }
        }

        usuarioInstance.properties = params

        if (!usuarioInstance.save(flush: true)) {
            render(view: "edit", model: [usuarioInstance: usuarioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
        redirect(action: "show", id: usuarioInstance.id)
    }

    def delete(Long id) {
        def usuarioInstance = Usuario.get(id)
        if (!usuarioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
            return
        }

        try {
            usuarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "show", id: id)
        }
    }

    def login(){

        String email = params.email
        String senha = params.senha

        Usuario usuario = Usuario.findByEmailAndSenha(email, senha)

        if(usuario != null){

            if(usuario.permissao == "Admin"){
                session.setAttribute("usuarioId", usuario.id)
                session.setAttribute("usuarioNome", usuario.nome)
                flash.message = "Logou"
                //redirect(uri: "")
                render(view: "Admin")
            }


        }else{
            flash.message = "Usuario e/ou senha incorretos"
            redirect(uri: "/")
        }
    }

    def meuPerfil(){

        int idProprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(idProprietario)

        render(view: "meuPerfil", model: [proprietario:proprietario])

    }

    def Sair(){
        session.removeAttribute("usuarioId")
        session.removeAttribute("usuarioNome")
        session.invalidate()
        redirect(uri: "/")
    }

    def esqueceuSenha(){

        String email = params.email

        Usuario usuario = Usuario.findByEmail(email)

        if(usuario != null){

            Random ram = new Random()
            int novaSenha = ram.nextInt(100000) + 10

            /*EnviarEmail(email.value, novaSenha.value.toString())*/
            usuario.senha=novaSenha.value

            sendMail {
                to email
                from "naoresponda@salaoby.me"
                subject "Recuperar senha - SalaoBy.Me"
                body 'Você fez um pedido para recuperar sua senha! Sua nova senha: ' + novaSenha
            }

            if(usuario.save(flush:true)){
                flash.message = "Nova senha enviada para o e-mail: " + email
            }

        }else{
            flash.message="E-mail não cadastro no sistema"
            //redirect(uri: "esqueceuSenha")
        }
    }
}
