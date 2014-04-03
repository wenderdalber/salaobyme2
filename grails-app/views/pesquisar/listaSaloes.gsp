<div >
    <g:form action="reservar" controller="reserva" method="post">
    <a href="javascript: fecha()">Fechar</a>

    <g:select name="servicos" class="form-control" from="${lista}">${lista.descricao}</g:select>

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
    <input type="submit" class="btn btn-success" value="Reservar"/>
        </g:form>
</div>


