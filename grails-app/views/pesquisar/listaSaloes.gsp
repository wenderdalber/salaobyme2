<g:if test="${lista.size > 0}">


        <a href="javascript: fecha()">Fechar</a>

        <div class="control-group">
            <label class="control-label" for="servicos">Serviços</label>
            <div class="controls">
                <label class="checkbox" for="servicos-0">
    <g:each in="${lista}" var="servico">
                    <input type="checkbox" name="servicos" id="servicos-0" value="${lista.servicos.id}">
                    ${lista.servicos.descricao}
    </g:each>
                </label>
            </div>
        </div>



</g:if>
<g:else>
    <a href="javascript: fecha()">Fechar</a>
    Nenhum resultado encontrado!

</g:else>