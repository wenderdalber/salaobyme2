package salaobyme

import org.springframework.dao.DataIntegrityViolationException

import javax.mail.Address
import javax.mail.Message
import javax.mail.MessagingException
import javax.mail.Session
import javax.mail.Transport
import javax.mail.internet.InternetAddress
import javax.mail.internet.MimeMessage

class SalaoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [salaoInstanceList: Salao.list(params), salaoInstanceTotal: Salao.count()]
    }

    def create() {
        [salaoInstance: new Salao(params)]
    }

    def save() {
        def salaoInstance = new Salao(params)

        int idProprietario = session.getAttribute("usuarioId")
        Proprietario proprietario = Proprietario.findByid(idProprietario)

        salaoInstance.proprietario = proprietario

        if (!salaoInstance.save(flush: true)) {
            render(view: "create", model: [salaoInstance: salaoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'salao.label', default: 'Salao'), salaoInstance.id])
        redirect(action: "show", id: salaoInstance.id)
    }

    def show(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        [salaoInstance: salaoInstance]
    }

    def edit(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        [salaoInstance: salaoInstance]
    }

    def update(Long id, Long version) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (salaoInstance.version > version) {
                salaoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'salao.label', default: 'Salao')] as Object[],
                          "Another user has updated this Salao while you were editing")
                render(view: "edit", model: [salaoInstance: salaoInstance])
                return
            }
        }

        salaoInstance.properties = params

        if (!salaoInstance.save(flush: true)) {
            render(view: "edit", model: [salaoInstance: salaoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'salao.label', default: 'Salao'), salaoInstance.id])
        redirect(action: "meuSalao", id: salaoInstance.id)
    }

    def delete(Long id) {
        def salaoInstance = Salao.get(id)
        if (!salaoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
            return
        }

        try {
            salaoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'salao.label', default: 'Salao'), id])
            redirect(action: "show", id: id)
        }
    }

    def meuSalao(){

        int Idproprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(Idproprietario)
        Salao salao = Salao.findByProprietario(proprietario)

        render(view: "meu_Salao", model: [salao:salao])

    }

    def meuServico(){

        int Idproprietario = session.getAttribute("usuarioId")

        Proprietario proprietario = Proprietario.findById(Idproprietario)
        Salao salao = Salao.findByProprietario(proprietario)

        Servico servico = Servico.findBySalao(salao)

        Servico servico2 = Servico.createCriteria().list{

        }

        render(view: "meuServico", model: [servico:servico])
    }

    def Sobre(){

    }

    public void EnviarEmail() {
        Properties props = new Properties();
        /** Parâmetros de conexão com servidor Gmail */
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected javax.mail.PasswordAuthentication getPasswordAuthentication()
                    {
                        return new javax.mail.PasswordAuthentication("wenderfatec@gmail.com", "yroehtESUOH11");
                    }
                });

        /** Ativa Debug para sessão */
        session.setDebug(true);

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("contato@salaoby.me")); //Remetente

            Address[] toUser = InternetAddress //Destinatário(s)
                    .parse(email);

            message.setRecipients(Message.RecipientType.TO, toUser);
            message.setSubject("Contato - SalaoBy.Me");//Assunto
            message.setText("Sua nova senha é: " + novaSenha);
            /**Método para enviar a mensagem criada*/
            Transport.send(message);

            System.out.println("Feito!!!");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }

    def faleConosco(){

        String nome = params.nome
        String email = params.email
        String telefone = params.telefone
        String mensagem = params.mensagem

        if(EnviarEmail()){
            flash.message="E-mail enviado com sucesso! Em breve retornaremos o contato"
        }else{
            flash.message="Erro! Verifique o e-mail digitado e tente novamente!"
        }

    }

    def estab(Long id){

        Salao salao = Salao.get(id)

        def lista =  salao.servicos

        render(view: "estab", model: [salao:salao, lista:lista])
    }
}
