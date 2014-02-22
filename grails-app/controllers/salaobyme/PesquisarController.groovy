package salaobyme

class PesquisarController {

    def index() {

        Date date = new Date()
        date.getAt(Calendar.DAY_OF_WEEK)

        def dayOfMonth = date.getAt(Calendar.DAY_OF_WEEK)
    }

    def search() {
        def pesquisa2 = params.pesquisar.split(" ")
        def pesquisa = pesquisa2.collect{ String palavra ->
            (palavra.length() > 3)? palavra : null

        }

        def Saloes = Salao.createCriteria().list{
            createAlias("servicos","servico")
            createAlias("servico.categoria","categoria")

            or{
                pesquisa.each { palavra ->
                    or{
                        ilike("nome","%${palavra}%")
                        ilike("servico.descricao","%${palavra}%")
                        ilike("categoria.nome","%${palavra}%")

                        endereco{
                            ilike("logradouro","%${palavra}%")
                            ilike("bairro","%${palavra}%")
                            ilike("cidade","%${palavra}%")
                            ilike("estado","%${palavra}%")
                        }


                    }
                }

            }

        }
    }
}
