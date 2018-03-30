## Api Restful  Maylon Zanardi

### Sobre a api

- Linguagem: PHP '7.1.15'
- Framework PHP: Laravel '5.5'
- Banco de dados: Mysql '5.6.36'


### Requisitos

- PHP
- MYSQL
- COMPOSER
- POSTMAN (Ou qualquer outro software que envie requisições HTTP).


### Montar o ambiente

Com o projeto em seu ambiente local, primeiramente deverá ser feito o download das dependencias do framework laravel através do comando "composer update", executando no diretório raiz do projeto.
*Lembrando que é necessario estar instalado composer na maquina e o PHP > 7.0.
***
Link download composer: https://getcomposer.org/download/
***
Devemos criar um arquivo .env (na raiz), para definirmos as configurações.

Copiar o arquivo .env.example, alterar para .env ***(Deve ser com o .(ponto) no inicio (.env))*** e editar os seguintes campos:

-DB_DATABASE = Com o nome da sua database.

-DB_USERNAME = Usuario do seu banco de dados.

-DB_PASSWORD = Senha do seu banco.

-APP_DEBUG = Ativar modo debug (Vamos deixa-lo ativado).


Exemplo:
```
APP_ENV=local
APP_DEBUG=true
APP_KEY=

DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=apirestfulmaylonzanardi
DB_USERNAME=root
DB_PASSWORD=

CACHE_DRIVER=file
SESSION_DRIVER=file

MAIL_DRIVER = 
MAIL_HOST = 
MAIL_PORT = 
MAIL_USERNAME = 
MAIL_PASSWORD = 
MAIL_ENCRYPTION = 
```

Para o framework funcionar corretamente devemos criar uma chave "APP_KEY=" usando o comando "php artisan key:generate" na raiz do projeto.

Exemplo:
```
C:\xampp\htdocs\apirestfulmaylonzanardi>php artisan key:generate
Application key [base64:EsgHdjbWs4gKZZbsNADkX1u1BMTJVJpJfdSBZpyCBG4=] set successfully.
```

Agora vamos ao BD.

Para facilitar o processo, deixei um dump com minha base previamente configurada em :

```
\database\migrations\dumpdatabase\Dumpapirestful.sql
```

Crie uma database com o mesmo nome que foi inserido no "DB_DATABASE" e execute o dump das tabelas e dados.

Agora vamos acessar o projeto via web, no meu caso criei uma rota no xampp chamada:

***apirestfulmaylonzanardi/***

Caso você utilize localhost ou outra rota, deverá alterar no arquivo get_token.blade.php localizado em:  

nomedoseuprojeto\resources\views\get_token.blade.php

e alterar essas duas linhas:

```
function loginadmin(){
        $.ajax({url:'http://apirestfulmaylonzanardi/oauth/token',

E

function loginuser(){
        $.ajax({url:'http://apirestfulmaylonzanardi/oauth/token',        
```

Para o nome de sua rota de requisição.

Exemplo: http://localhost/oauth/token

Na pagina inicial (Acesso browser) é possivel clicar em 2 botões:
***Login as Admin*** e ***Login as User***

Aqui é gerado dois tipos de permissões de token: admin e user conforme solicitado.
São feitas 2 requisições post ajax passando os parametros:

Exemplo parametros requisição user:

```
    'grant_type': 'password',
    'client_id': '2',
    'client_secret': 'EH7X2Zl9SSYU7SX1Ch9nDqW7i6tXxhetSt5Kk6lM',
    'username': 'joao@hotmail.com',
    'password': 'secret',
    'scope' : 'get-user edit-user delete-user'

```

Os dados client_id, client_secret, username, password são autenticados com o banco (esses dados já existem no dump feito anteriormente).
Caso queira criar novas chaves para client basta executar 


```
php artisan passport:keys
```

Os dados ficaram contidos na tabela oauth_clients.

Agora podemos utilizar uma ferramenta para testar nossos EndPoints, no meu caso Postman.

Exemplo:

```
API RESTFUL TESTS

//Visualizar Geral
GET
apirestfulmaylonzanardi/api/users  


//Visualizar por id
GET
apirestfulmaylonzanardi/api/users/1 

//Inserir
POST
apirestfulmaylonzanardi/api/users?name=marcelo&email=marcelo@hotmail.com&username=marcelo&password=123456 

//Editar
PUT
apirestfulmaylonzanardi/api/users/3?name=Novo nome&email=novoemail@hotmail.com.br&username=novonome&password=1234567

//Deletar
DELETE
apirestfulmaylonzanardi/api/3 

```

*Lembrando que "apirestfulmaylonzanardi" é minha rota customizada, caso for localhost, usar : localhost/api/users/1 

***Importante:*** para as rotas com autentificação, deve ser editado o header de cada requisição da seguinte maneira:

```
Content-Type:  application/x-www-form-urlencoded
Accept:        application/json
Authorization: Bearer TOKEN GERADO NA TELA INICIAL DO SISTEMA

```

Dados mascarados podem ser acessados sem autentificação com a seguinte rota: 

GET http://apirestfulmaylonzanardi/users/1 (Id do usuario que deseja listar).

Observações: 

1- Ao alterar o header Authorization após colar o 
Bearer 'token', deletar ultima linha em branco, pois acontece um erro de leitura no token.

2- Todos os erros estão sendo passados no header e na resposta json coluna "http_status".

3- Para testes de endpoints com usuario admin ou user, basta trocar o token que é gerado na pagina inicial no header "Authorization", não sendo necessario criar uma requisição para o resgate do token. 

4- Projeto com todas requisições e tratamentos comentado.