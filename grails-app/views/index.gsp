<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <meta name="layout" content="main"/>
    <title>SalaoBy.Me - A beleza a um click de distância!</title>

    <style type="text/css">
    h3{
        margin: 0;
        color: #666;
        padding-top: 90px;
        font-size: 52px;
        font-family: "trebuchet ms", sans-serif;
        color: #000000;
    }
    .item{
        background: #333;
        text-align: center;
        height: 300px !important;
        color: #000000;
    }
    .carousel{
        margin-top: 20px;
        color: #000000;
    }
    .bs-example{
        margin: 20px;
    }

    .divPrincipal{
        width: 370px;
        height: 300px;
        background-color: #ffffff;
        float:left;
    }
        .divEspaco{
            width: 30px;
            height: 300px;
            float:left;
        }
    </style>
</head>
<body style="background-image: url(/images/fundosalaobyme.png);">

<div class="pesquisa">
    <div style="height: 50px">
        <g:form class="form-inline" method="GET" action="buscar" controller="Pesquisar">

            <div class="form-group col-sm-10">
                <input type="text" class="form-control" id="pesquisar" name="pesquisar" placeholder="Salões, serviços ou endereços">
            </div>
            <button type="submit" class="btn btn-warning">Buscar</button>

        </g:form>
    </div>

</div>
<div class="container">

    <hr>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- Carousel items -->
        <div class="carousel-inner">
            <div class="active item">
                <div class="fill" style="background-image:url('images/01.jpg');"></div>
                <h2>Os melhores salões e serviços a um click de distância!</h2>
                <div class="carousel-caption">
                    <h3>Os melhores salões e serviços a um click de distância!</h3>
                    <p></p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/02.jpg');"></div>
                <h2>Slide 2</h2>
                <div class="carousel-caption">
                    <h3>Maquiagens para festas, casamentos e demais eventos sociais!</h3>
                    <p></p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('images/03.jpg');"></div>
                <h2>Slide 3</h2>
                <div class="carousel-caption">
                    <h3>Acesse nosso facebook <a href="http://facebook.com/salaobyme">SalaoByMe</a></h3>
                    <p></p>
                </div>
            </div>
        </div>
        <!-- Carousel nav -->
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </div>


</div><!-- /.container -->

<div class="section">

    <div class="container">

        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Os mais buscados do mes de Fevereiro</h2>
                <hr>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="portfolio-item.html"><img class="img-responsive img-home-portfolio" src="images/01.jpg"></a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="portfolio-item.html"><img class="img-responsive img-home-portfolio" src="images/02.jpg"></a>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <a href="portfolio-item.html"><img class="img-responsive img-home-portfolio" src="images/03.jpg"></a>
            </div>
        </div><!-- /.row -->

    </div><!-- /.container -->

    <div class="container">

        <div class="row" >
            <div class="col-lg-4 col-md-4 divPrincipal">
                <h3><i class="fa fa-check-circle"></i> Luz Cabelos</h3>
                <p>Localizado no centro da cidade, um salão moderno e preparado para atender com qualidade! Mais de 10 anos de qualidade aprovada! Acesse a pagina do salão <a href="/Salao/LuzCabelos"> Luz Cabelos</a></div>
            <div class="divEspaco"></div>
            <div class="col-lg-4 col-md-4 divPrincipal">
                <h3><i class="fa fa-pencil"></i> Clínica de Estética ARN</h3>
                <p>Premoções imperdíveis no nosso mês de aniversário! Venha conhecer nossos pacotes promocionais! Acesse a página de <a href="/Salao/ARN"> ARN</a>!</p>
            </div>
            <div class="divEspaco"></div>
            <div class="col-lg-4 col-md-4 divPrincipal">
                <h3><i class="fa fa-folder-open"></i> Dona Almeida</h3>
                <p>Venha conferrir nossos pacotes para noivas! Promoções imperdiveis! Acesse a página de <a href="/Salao/DonaAlmeida">Dona Almeida</a></p>
            </div>
        </div><!-- /.row -->

    </div><!-- /.container -->

</div><!-- /.section -->

<div class="container">

    <div class="row well">
        <div class="col-lg-8 col-md-8">
            <h4>Faça parte do SalaoBy.Me</h4>
            <p>Venha oferecer seus serviços e triplicar seus rendimentos junto com milahres de salões de destaque no país!</p>
        </div>
        <div class="col-lg-4 col-md-4">
            <a class="btn btn-lg btn-primary pull-right" href="http://SalaoBy.Me">Salões</a>
        </div>
    </div><!-- /.row -->

</div><!-- /.container -->

<!-- JavaScript -->
<script src="js/jquery-1.10.2.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/modern-business.js"></script>
</body>
</html>
