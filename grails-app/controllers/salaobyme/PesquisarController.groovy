package salaobyme

class PesquisarController {

    def index() {

        Date date = new Date()
        date.getAt(Calendar.DAY_OF_WEEK)

        def dayOfMonth = date.getAt(Calendar.DAY_OF_WEEK)
    }

    def buscar() {
        def arrayPalavras = params.pesquisar.split(" ")
        def pesquisa = arrayPalavras.collect{ String palavra ->
            (palavra.length() > 3)? palavra : null
        }

        def saloes = Salao.createCriteria().list{
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
        render(view: "buscar", model: [saloes:saloes])
    }
}
