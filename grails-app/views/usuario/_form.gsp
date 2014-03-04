<%@ page import="salaobyme.Usuario" %>



<form class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>Form Name</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="nome">Nome</label>
            <div class="col-md-6">
                <g:textField name="nome" required="" class="form-control input-md" value="${usuarioInstance?.nome}"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="email">E-mail</label>
            <div class="col-md-6">
                <g:field type="email" name="email" placeholder="exemplo@email.com" class="form-control input-md" required="" value="${usuarioInstance?.email}"/>
            </div>
        </div>

        <!-- Password input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="senha">Senha</label>
            <div class="col-md-6">
                <g:textField type="password" name="senha" required="" placeholder="*****" class="form-control input-md" value="${usuarioInstance?.senha}"/>

            </div>
        </div>
    </fieldset>
</form>
</div>

