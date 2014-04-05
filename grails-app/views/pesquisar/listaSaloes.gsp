<div style="width: 950px" >
    <g:form action="reservar" controller="reserva" method="post">
    <a href="javascript: fecha()"> <img style="width: 30px; height: 30px; float:left" src="../images/fechar.jpg" /> </a><br>

    <input type="hidden" name="idSalao" value="${idSalao}">
    <h3>Selecione um serviço:</h3>
    <g:select name="servicos" class="form-control" style="width: 50%" from="${lista}">${lista.descricao}</g:select>

    <h3>Selecione o horário</h3>
    <div style="padding-left: 50px ;width: 850px" class="row">
        <%def dataTeste = new Date()%>

        <g:if test="${datas.first().format('dd/MM/yyyy') > dataTeste.format('dd/MM/yyyy')}">
            <span style="margin-left: -50px" onclick="${remoteFunction(controller: 'Pesquisar', action: 'menosDatas', update: 'divSalao', params:'\'dias=\' + \''+datas.first().format("dd/MM/yyyy")+'-'+idSalao+'\'')}"> <img src="../images/seta2.jpg" /> </span>
        </g:if>

        <span style="margin-left: 600px;margin-top: 450px;" onclick="${remoteFunction(controller: 'Pesquisar', action: 'maisDatas', update: 'divSalao', params:'\'dias=\' + \''+datas.first().format("dd/MM/yyyy")+'-'+idSalao+'\'')}"> <img src="../images/seta1.jpg" /> </span>
        <g:each in="${datas}" var="data">
            <div>
                <div style="float: left;width: 90px;height: 200px;">
                    <div>
                        ${data.format("dd/MM/yyyy")}
                    </div >
                    <div>
                      <% def diaSemana = data.getAt(Calendar.DAY_OF_WEEK)
                      switch (diaSemana){

                          case 1: %>
                      <span>Dom</span>
                        <%break;
                            case 2: %>
                        <span>Seg</span>
                        <%break;

                            case 3: %>
                        <span>Ter</span>
                        <%break;
                            case 4: %>
                        <span>Qua</span>
                        <%break;
                            case 5: %>
                        <span>Qui</span>
                        <%break;
                            case 6: %>
                        <span>Sex</span>
                        <%break;
                            case 7: %>
                        <span>Sab</span>
                        <%break;
                        %>
                      <%}
                      %>
                    </div>
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
        <input type="submit" class="btn btn-success" style="margin-left: 600px;margin-top: -800px;" value="Reservar"/>
        </g:form>
</div>


