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
        render(view: "index", model: [saloes:saloes])
    }

    def buscarServicos(int id){

        def salao = Salao.findById(id)

        redirect(action: 'listandoServico', params:[id:salao.id])
    }

    def listandoServico(){

        def lista = Salao.createCriteria().list {
            servicos{
            }
        }

        render(view: "/pesquisar/listaSaloes.gsp", model:[lista:lista])
    }
}
