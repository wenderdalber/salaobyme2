class BootStrap {

    def mailService
    def init = { servletContext ->
        mailService.sendMail {
        }
    }
    def destroy = {
    }
}
