package salaobyme

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage
import java.security.MessageDigest
import sun.misc.BASE64Encoder;
import java.security.NoSuchAlgorithmException;

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
        usuarioInstance.senha = md5(params.senha)
        usuarioInstance.permissao = "Usuario"

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

       /* try {*/
            usuarioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "list")
/*        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'usuario.label', default: 'Usuario'), id])
            redirect(action: "show", id: id)
        }*/
    }

    def login(){

        String email = params.email
        String senha =  md5(params.senha)

        Usuario usuario = Usuario.findByEmailAndSenha(email, senha)

        if(usuario != null){

            if(usuario.permissao == "Admin"){
                session.setAttribute("usuarioId", usuario.id)
                session.setAttribute("usuarioNome", usuario.nome)
                session.setAttribute("usuarioPermissao", usuario.permissao)
                flash.message = "Logou"
                //redirect(uri: "")
                render(view: "Admin")
            }else{
                session.setAttribute("usuarioId", usuario.id)
                session.setAttribute("usuarioNome", usuario.nome)
                flash.message = "Logou"
                //redirect(uri: "")
                redirect(uri: "/")
            }


        }else{
            flash.message = "Usuario e/ou senha incorretos"
            redirect(uri: "/")
        }
    }

    def meuPerfil(){

        if(session.getAttribute("usuarioPermissao") == "Admin"){
        int idProprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(idProprietario)

        render(view: "meu_Perfil", model: [proprietario:proprietario])
        }else{
         int idUsuario = session.getAttribute("usuarioId")

         Usuario usuario = Usuario.findById(idUsuario)
         Reserva reserva = Reserva.findByUsuario(usuario)

                render(view: "meu_Perfil", model: [usuario:usuario, reserva:reserva])
        }
    }

    def Sair(){
        session.removeAttribute("usuarioId")
        session.removeAttribute("usuarioNome")
        session.invalidate()
        redirect(uri: "/")
    }


    public static String md5(String senha){
        String sen = "";
        MessageDigest md = null;
        try {
            md = MessageDigest.getInstance("MD5");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        BigInteger hash = new BigInteger(1, md.digest(senha.getBytes()));
        sen = hash.toString(16);
        return sen;
    }


    public void EnviarEmail(String email, String novaSenha) {
        Properties props = new Properties();
        /** Parâmetros de conexão com servidor Gmail */
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication()
                    {
                        return new PasswordAuthentication("wenderfatec@gmail.com", "yroehtESUOH11");
                    }
                });

        /** Ativa Debug para sessão */
        session.setDebug(true);

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("naoresponda@salaoby.me")); //Remetente

            Address[] toUser = InternetAddress //Destinatário(s)
                    .parse(email);

            message.setRecipients(Message.RecipientType.TO, toUser);
            message.setSubject("Recuperacao de Senha - SalaoBy.Me");//Assunto
            message.setText("Sua nova senha é: " + novaSenha);
            /**Método para enviar a mensagem criada*/
            Transport.send(message);

            System.out.println("Feito!!!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    def esqueceu_Senha(){

        String email = params.email

        Usuario usuario = Usuario.findByEmail(email)

        if(usuario != null){

            Random ram = new Random()
            int novaSenha = ram.nextInt(100000) + 10

            EnviarEmail(email.value.toString(), novaSenha.value.toString())
            usuario.senha=novaSenha.value

            if(usuario.save(flush: true)){
                flash.message="E-mail enviado com sucesso!"
                render(view: "esqueceu_Senha")
            }else{
                flash.message="Ocorreu um erro, tente novamente!"
            }
        }else{
            flash.message="E-mail não cadastro no sistema"
            //redirect(uri: "esqueceuSenha")
        }
    }
}
