package salaobyme

import org.hibernate.criterion.CriteriaSpecification

class PesquisarController {

    def index() {

        Date date = new Date()
        date.getAt(Calendar.DAY_OF_WEEK)

        def dayOfMonth = date.getAt(Calendar.DAY_OF_WEEK)
    }

    def buscar(String pesquisar) {

        def arrayPalavras = params.pesquisar.split(" ")
        def pesquisa = arrayPalavras.collect{palavra ->
            (palavra.length() > 3)? palavra : null
        }

        def saloes = Salao.createCriteria().listDistinct{
            createAlias("servicos","servico")
            createAlias("servico.categoria","categoria")
            createAlias("endereco", "endereco")

            or{
                pesquisa.each { palavra ->
                    or{
                        ilike("nome","%${palavra}%")
                        ilike("servico.descricao","%${palavra}%")
                        ilike("categoria.nome","%${palavra}%")

                        ilike("endereco.logradouro","%${palavra}%")
                        ilike("endereco.bairro","%${palavra}%")
                        ilike("endereco.cidade","%${palavra}%")
                        ilike("endereco.estado","%${palavra}%")

                    }
                }

            }

        }
        render(view: "index", model: [saloes:saloes])
    }

    def buscarServicos(Long id){

        def salao = Salao.findById(id)

        def lista = salao.servicos

        //def lista = salao.servicos.asList()
        //redirect(action: 'listandoServico', params:[id:salao.id])
        render(view: "/pesquisar/listaSaloes.gsp", model:[lista:lista])
    }

    def listarSaloes(int id){

        def salao = Salao.findById(id)

        def lista = salao.servicos

        render(view: "/pesquisar/listaSaloes.gsp", model:[lista:lista])
        //render(view: "listaSaloes", model:[lista:lista])
    }
}
