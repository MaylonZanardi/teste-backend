<p align="center">
  <a href="http://www.procob.com">
      <img src="https://i.imgur.com/vsdxA6H.jpg" alt="Procob S.A" width="300px"/>
  </a>
</p>

___


## Processo seletivo para vaga desenvolvedor back-end PHP 

### Sobre a Vaga

- Empresa: Procob S.A
- Cargo: Desenvolvedor back-end PHP
- Benefícios: Plano de Saúde, Plano Odontológico, Seguro de vida, Vale Transporte, Vale Refeição, 14º Salário;
- Vaga presencial - Curitiba-PR;

### Requisitos

Requisitos para a vaga:

- PHP Orientado a Objetos
- Algum framework mvc (De preferência Symfony)
- Design Patterns
- Git, Git flow
- MySql
- NoSQL
- RESTful


### O teste

O desenvolvedor irá ter que criar uma API RESTFul com 4 Enpoints usando ***PHP 5.6 ou superior***

- Criar um usuário;
- Listar um usuário pelo id ou username;
- Alterar um usuário;
- Deletar um usuário pelo id ou username;

Para acessar esses endpoits (Exceto o de criação de usuários) será necessário autenticar-se na API, onde terá dois tipos de usuários:

- Admin - Pode Criar quantos usuários quiser, Pode listar qualquer usuário, Pode alterar qualquer usuário, Pode deletar qualquer usuário;
- User  - Pode Criar quantos usuários quiser, Pode listar somente seu usuário, Pode alterar somente seu usuário, Pode deletar somente seu usuário;

### Tabela do banco de dados - Deverá ser usado MySql

| Campos            |
| ------------------|
| `id`              |
| `email`           |
| `username`       	|
| `nome`       		|
| `sobrenome`      	|
| `data_criacao`    |


### Como participar

1. Faça o fork do desafio.

2. Você terá **1 dia para** desenvolver a partir da data do envio do teste. 

3. Crie um **PROJECT.md** com a explicação de como executar e com o máximo de detalhes de como o teste foi feito como: tecnologia, framework, padões de projetos etc.

4. Após concluir faça um pull request.

5. Envie um e-mail para anderson@procob.com.br com seu **curriculo, pretensão salarial e o link do seu pull request**.