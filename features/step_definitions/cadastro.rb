Dado('que eu esteja na home') do
    @home_page.load
end

Quando('clico em formulário e clico em Criar usuários') do
    @home_page.click_on_form
    @home_page.click_on_create_users
end

Então('realizo a criação de um novo usuário') do
    @home_page.insert_name
end

Então('realizo a criação de um novo usuário sem preencher o campo nome') do

end

Então('a mensagem é apresentada {string}') do |string|

end

Então('realizo a criação de um novo usuário preenchendo o campo email incorretamente') do

end

Então('realizo a criação de um novo usuário sem preencher o campo emdereço') do

end

Então('o botão Criar é apresentado') do

end

Então('o botão Voltar é apresentado') do

end