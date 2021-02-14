class HomePage < SitePrism::Page
    include Capybara::DSL
    set_url "/"
    
    element :name, "#user_name"
    element :user_age, "#user_age"
    element :user_email, "#user_email"
    element :last_name, "#user_lastname"
    element :user_gender, "#user_gender"
    element :user_adress, "#user_address"
    element :user_profile, "#user_profile"
    element :user_university, "#user_university"
    element :button_create, 'input[value="Criar"]'
    element :create_users_form, :class => "collapsible-body"
    element :form, :class => "collapsible-header", :text => 'Formulário'
    element :button_back, :class => "waves-light", :text => 'Voltar'
    element :message_user, :class => "center"
    element :error, "#error_explanation"

    def click_on_form
        form.click
    end

    def click_on_create_users
        create_users_form.find(:xpath, "/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[1]/a").click
    end

    def insert_name
        name.set Faker::Name.name
    end

    def insert_age
        user_age.send_keys [:up, '9']
    end

    def insert_email
        user_email.set Faker::Internet.email
    end

    def insert_last_name
        last_name.set Faker::Name.last_name()
    end

    def insert_gender 
        user_gender.set 'Masculino'
    end

    def insert_adress
        user_adress.set Faker::Address.street_address
    end

    def insert_profile
        user_profile.set 'Analista de Qualidade SR' 
    end

    def insert_university
        user_university.set Faker::University.name
    end

    def click_button_create
        button_create.click
    end

    def click_button_back
        button_back.click
    end

    def create_button
        button_create
    end

    def message_error
        error
    end
end