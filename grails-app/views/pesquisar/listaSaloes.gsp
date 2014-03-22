

        <a href="javascript: fecha()">Fechar</a>

        <g:select name="servicos" class="form-control" from="${lista}">${lista.descricao}</g:select>

        <g:each in="${datas}" var="data">
            <div>
                <div>
                    ${data.format("dd/MM/yyyy")}
                </div>

                <g:each in="${todosHorarios}" var="horario">

                    <div>${horario}</div>
                    ${data.format("dd/MM/yyyy")+" "+horario}
                    ---- ${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]}------
                    <g:if test="${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]== true}">
                        ocupado
                    </g:if>
                </g:each>
            </div>
        </g:each>
