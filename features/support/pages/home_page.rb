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
    element :button_create, :input => "commit"
    element :create_users, :class => "collapsible-body"
    element :form, :class => "collapsible-header", :text => 'Formulário'
    element :button_back, :class => "btn waves-light red", :text => 'Voltar'

    def click_on_form
        form.click
    end

    def click_on_create_users
        create_users.find(:xpath, "/html/body/div[2]/div[1]/ul/li[1]/div/ul/li[1]/a").click
    end

    def insert_name
        name.set Faker::Name.name
    end

    def insert_age
        user_age.rand(99)
    end

    def insert_email
        user_email.set Faker::Internet.email
    end

    def insert_last_name
        last_name.set Faker::Name.last_name()
    end
end