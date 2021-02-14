#language: pt
@temp
Funcionalidade: Cadastro através da home
    Eu como análista
    Posso acessar a home
    Para validar a criação de um novo usuário

    Cenário: Criar um novo usuário
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários
        Então realizo a criação de um novo usuário
    
    Cenário: Validar a criação de um novo usuário sem nome
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários
        Então realizo a criação de um novo usuário sem preencher o campo nome
        E a mensagem é apresentada error proibiu que este usuário fosse salvo

    Cenário: Validar a criação de um novo usuário com email incorreto
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários
        Então realizo a criação de um novo usuário preenchendo o campo email incorretamente
        E a mensagem é apresentada error proibiu que este usuário fosse salvo

    Cenário: Validar a criação de um novo usuário sem preencher o campo endereço
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários
        Então realizo a criação de um novo usuário sem preencher o campo endereço
        E a mensagem é apresentada error proibiu que este usuário fosse salvo

    Cenário: Validar se o botão criar está na pagina de criação de usuário
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários 
        Então o botão Criar é apresentado

    Cenário: Validar se o botão Voltar está na pagina de criação de usuário
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários 
        Então o botão Voltar é apresentado

    Cenário: Validar se a mensagem "Novo Usuário" está na pagina de criação de usuário
        Dado que eu esteja na home
        Quando clico em formulário e clico em Criar usuários 
        Então o botão Voltar é apresentado    