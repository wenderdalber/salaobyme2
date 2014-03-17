<g:if test="${saloes.size() > 0}">

    <g:each in="${saloes}" var="salao">

        ${salao.nome}
        ${salao.cnpj}

    </g:each>


</g:if>
<g:else>

    Nenhum resultado encontrado!

</g:else>