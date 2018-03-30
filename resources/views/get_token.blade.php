<?php

/*******************************************************************************************************
 **              View get_token
 **
 **--------------Informação do Arquivo -----------------------------------------------------------------
 ** Nome do Arquivo:          get_token.blade.php
 ** Data Ultima Modificação:  29-03-2018
 ** Ultima Versão:            Sim
 ** Descrição:                Exibe uma interface para geração de token de acesso ao sistema.
 **------------------------------------------------------------------------------------------------------
 ** Criado por:          Maylon Zanardi <maylonzanardi@hotmail.com>
 ** Data de Criação:     29-03-2018
 ********************************************************************************************************/

//Habilita qualquer tipo de header
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
?>
<html>
<head>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<title>Get Token Autentication</title>
<body>

<!-- Exibe 2 botões que chamam uma função javascript, jquery para gerar o token admin e user. -->
<button onclick="loginadmin();"> Login as Admin</button>
<button onclick="loginuser();"> Login as User</button>

<!-- Div para exibição dos dados após requisição ajax. -->
<div id="info">
</div>

<script>

    /*********************************************************************************************************
     ** Nome da Função:       loginadmin
     ** Descrição:            Função para receber token de acesso admin que chama uma requisição ajax para
     **                       autenticação com o Oauth2.0. Passando dados previamente já cadastrados  no
     **                       banco de dados.
     ** Parametro:            Não utilizado.
     ** Valor de retorno:     Retorna o token admin para acesso aos Endpoints do sistema.
     *********************************************************************************************************/
    function loginadmin(){

        //Requisição ajax para o Oauth gerar token a partir de dados cadastrados no bd e definidos no sistema.
        $.ajax({url:'http://apirestfulmaylonzanardi/oauth/token',
            type: 'POST',
            data:{
                'grant_type': 'password',
                'client_id': '2',
                'client_secret': 'EH7X2Zl9SSYU7SX1Ch9nDqW7i6tXxhetSt5Kk6lM',
                'username': 'maylonzanardi@hotmail.com',
                'password': 'maylon',
                'scope' : 'get-user-admin edit-user-admin delete-user-admin',
            },

            //Se requisição retornar com sucesso, é alterado o html com o tipo do usuario e token de acesso.
            success:function(data){
                $('#info').html(showInformations('Administrator', data.access_token));
            }
        });
    }

    /*********************************************************************************************************
     ** Nome da Função:       loginuser
     ** Descrição:            Função para receber token de acesso user que chama uma requisição ajax para
     **                       autenticação com o Oauth2.0. Passando dados previamente já cadastrados  no
     **                       banco de dados.
     ** Parametro:            Não utilizado.
     ** Valor de retorno:     Retorna o token user para acesso aos Endpoints do sistema.
     *********************************************************************************************************/
    function loginuser(){
        //Requisição ajax para o Oauth gerar token a partir de dados cadastrados no bd e definidos no sistema.
        $.ajax({url:'http://apirestfulmaylonzanardi/oauth/token',
            type: 'POST',
            data:{
                'grant_type': 'password',
                'client_id': '2',
                'client_secret': 'EH7X2Zl9SSYU7SX1Ch9nDqW7i6tXxhetSt5Kk6lM',
                'username': 'joao@hotmail.com',
                'password': 'secret',
                'scope' : 'get-user edit-user delete-user',
            },
            //Se requisição retornar com sucesso, é alterado o html com o tipo do usuario e token de acesso.
            success:function(data){
                $('#info').html(showInformations('User', data.access_token));
            }

        });
    }

    /*********************************************************************************************************
     ** Nome da Função:       showInformations
     ** Descrição:            Função que cria uma string com html que vai ser inserido caso alguma requisição
     **                       requisição ajax seja feita com sucesso.
     ** Parametro:            Tipo do login, Acesso Token - String com o nome do tipo de acesso e o token
     **                       gerado via ajax.
     ** Valor de retorno:     Retorna uma string HTML.
     *********************************************************************************************************/
    function showInformations (typelogin, access_token){
        var text = '<br><br>' +
                '<spam> Autenticado com sucesso! </spam>' +
                '<br><br>' +
                '<fieldset > <legend>Informações </legend>' +
                '  <label >Logado como: '+typelogin+'</label>' +
                '<br><br>' +
                '<label>Token: '+access_token+'</label>'+
                '<br><br>'+
                '</fieldset>';

        return text;
    }
</script>
</body>
</html>