#language: pt 
#utf-8

Funcionalidade: Cadastro de empregado
Eu como usuario adm do site 
Quero cadastrar um novo empregado 
Para gerenciar as informações do empregado

@cadastro_novo_empregado
Cenario: Cadastrar um novo empregado
Dado que estou logado no site 
Quando realizar o cadastro do empregado 
Então empregado sera cadastrado com sucesso


@Editar_cadastro
Cenario: Alteração de cadastro do empregado
Dado que esteja acessado o site ORANGEHRM 
Quando realizar a alteração do cadastro do empregado "0012"
Então sera alterado com sucesso