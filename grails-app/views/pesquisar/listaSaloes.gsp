<div >
    <g:form action="reservar" controller="reserva" method="post">
    <a href="javascript: fecha()">Fechar</a>
    <input type="hidden" name="idSalao" value="${id}">
    <h3>Selecione um serviço:</h3>
    <g:select name="servicos" class="form-control" from="${lista}">${lista.descricao}</g:select>

    <h3>Selecione o horário</h3>
    <div class="row">
        <g:each in="${datas}" var="data">
            <div>
                <div style="float: left;width: 90px;height: 200px;">
                    <div>
                        ${data.format("dd/MM/yyyy")}
                    </div >

                    <g:each in="${todosHorarios}" var="horario">
                        <div style="min-width: 90px; float:left;">
                        <g:if test="${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]== true}">
                           <input style="float: left;" type="checkbox" value="${data.format("yyyy/MM/dd")+"-"+horario}" name="check" disabled/><div style="color: red; float:left;"> ${horario}     </div>
                        <!--<span style="background-color: red">-${horariosOcupados[data.format("dd/MM/yyyy")+" "+horario]}-</span>-->
                        </g:if>
                        <g:else>
                            <input type="checkbox" style="float: left;"  value="${data.format("yyyy/MM/dd")+"-"+horario}" name="check"/><div style="float: left;"> ${horario}    </div>
                        </g:else>
                        </div>
                    </g:each>
                </div>
            </div>
        </g:each>


    </div>

        <g:each in="${salao}">

            <input type="text" id="idSalao" name="idSalao" value="${salao.id}" />

        </g:each>
        <input type="submit" class="btn btn-success" style="margin-left: 600px;margin-top: -250px;" value="Reservar"/>
        </g:form>

    <%def dataTeste = new Date()%>

    <g:if test="${datas.first().format('dd/MM/yyyy') > dataTeste.format('dd/MM/yyyy')}">
        <input type="button" class="btn btn-primary" id="btnAnterior" value="Anterior" style="margin-left: 600px;margin-top: -450px;" onclick="${remoteFunction(controller: 'Pesquisar', action: 'menosDatas', update: 'divSalao', params:'\'dias=\' + \''+datas.first().format("dd/MM/yyyy")+'-'+idSalao+'\'')}" />
    </g:if>

    <input type="button" class="btn btn-primary" value="Próximo" style="margin-left: 600px;margin-top: -400px;" onclick="${remoteFunction(controller: 'Pesquisar', action: 'maisDatas', update: 'divSalao', params:'\'dias=\' + \''+datas.first().format("dd/MM/yyyy")+'-'+idSalao+'\'')}" />
</div>


