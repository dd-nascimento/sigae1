<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title> SiGA-E - Sistema de Gestão da Administração Escolar. </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="_css/folha_estilo.css"
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro" rel="stylesheet">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
</head>
<body>
    <div id="logo">
        <img align="center" src="_img/logo.png">
    </div>
    <div class="cabeca">

        <h2> SiGA-E - Sistema de Gestão da Administraçaõ Escolar </h2>
        <p><b> Centro de Ensino em Tecnologia Kabum. </b></p>

    </div>
        <div class="menu">
            <nav id="menuprincipal">
                <ul>
                <li><a href="index.html"> Início </a> </li>
                <li><a href="search_student.jsp"> Pesquisar </a></li>
                <li><a href="cadastro_estudante.html"> Matricular Esutdante</a></li>
                <li><a href="#"> Enturmação </a></li>
                        <ul>
                            <li><a href="new_turm.html"> Criar Turma </a></li>
                            <li><a href="#"> Enturmar Estudante </a></li>
                            <li><a href="#"> Ajuste de Turma </a></li>
                        </ul>
                    <li><a href="#"> Relatórios </a></li>
                        <ul>
                            <li><a href="#"> Lista de Enturmação </a></li>
                            <li><a href="#"> Ficha de Matricula </a></li>
                            <li><a href="#"> Ficha de Transferência </a></li>
                        </ul>
                    <li><a href="#"> Histórico Escolar </a></li>
                    <li><a href="#"> Ajuda </a></li>
                    <li><a href="#"> Sair </a></li>
                </ul>
            </nav>
        </div>
        <br>
        <br>
        <div  class="cargatotal">
            <br>
            <br>
            <form action="pesquisarestudante.jsp" method="GET">
                <b> Selecione o tipo de busca: </b> 
                <br>
                <br>
                <input type="radio" name="pesquisa" value="pesquisa1"> Matricula <br>
                <input type="radio" name="pesquisa" value="pesquisa2"> Data de Nascimento <br>
                <input type="radio" name="pesquisa" value="pesquisa3"> Mae do (a) Estudante.<br>
                    <script>

                        function exibir{
                            if()
                        }

                    </script>
            </form>
               
                             
        </div>
        <br>
        <br>
          
</body>
</html>