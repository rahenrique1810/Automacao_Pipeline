Dado('que eu esteja na home') do
    @home_page.load
end

Quando('clico em formulário e clico em Criar usuários') do
    @home_page.click_on_form
    @home_page.click_on_create_users
end

Então('realizo a criação de um novo usuário') do
    @home_page.insert_name
    @home_page.insert_last_name
    @home_page.insert_email
    @home_page.insert_adress
    @home_page.insert_university
    @home_page.insert_profile
    @home_page.insert_gender 
    @home_page.insert_age
    @home_page.click_button_create
end

Então('realizo a criação de um novo usuário sem preencher o campo nome') do
    @home_page.insert_last_name
    @home_page.insert_email
    @home_page.insert_adress
    @home_page.insert_university
    @home_page.insert_profile
    @home_page.insert_gender 
    @home_page.insert_age
    @home_page.click_button_create
end

Então('a mensagem é apresentada error proibiu que este usuário fosse salvo') do
    @texto = @home_page.message_error
    expect(@texto).to have_content '1 error proibiu que este usuário fosse salvo:'
end

Então('realizo a criação de um novo usuário preenchendo o campo email incorretamente') do
    @home_page.insert_name
    @home_page.insert_last_name
    @home_page.insert_adress
    @home_page.insert_email.set '@'
    @home_page.insert_university
    @home_page.insert_profile
    @home_page.insert_gender 
    @home_page.insert_age
    @home_page.click_button_create
end

Então('realizo a criação de um novo usuário sem preencher o campo endereço') do
    @home_page.insert_name
    @home_page.insert_last_name
    @home_page.insert_email
    @home_page.insert_university
    @home_page.insert_profile
    @home_page.insert_gender 
    @home_page.insert_age
    @home_page.click_button_create
end