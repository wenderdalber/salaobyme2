<g:if test="${salao != null}">

    <g:each in="${salao}" var="salao">
        <a href="javascript: fecha()">Fechar</a>
        ${salao.nome}
        ${salao.cnpj}

    </g:each>


</g:if>
<g:else>
    <a href="javascript: fecha()">Fechar</a>
    Nenhum resultado encontrado!

</g:else>