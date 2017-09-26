#Configurando o Driver Capybara
Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Setando a configuração do driver como padrao
Capybara.default_driver = :selenium


#timeout padrao na execução
Capybara.default_max_wait_time = 90

#Maximizar a tela ao iniciar o teste
Capybara.page.driver.browser.manage.window.maximize