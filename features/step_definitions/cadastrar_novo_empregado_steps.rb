#language: pt
#utf-8

Dado(/^que estou logado no site$/) do
  
  visit "http://opensource.demo.orangehrmlive.com"

  fill_in('txtUsername', :with => 'Admin')
  fill_in('txtPassword', :with => 'admin')
  find(:id,'btnLogin').click

end

Quando(/^realizar o cadastro do empregado$/) do 

  
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_addEmployee').click
  fill_in('firstName', :with => 'GabeiraVP')
  fill_in('middleName', :with => 'Dojo_1')
  fill_in('lastName', :with => 'Desafio_Dojo')
  @cadastro = find(:id,"employeeId").value.to_i
  check('chkLogin')
  fill_in('user_name', :with => 'GabeiraVP3')
  fill_in('user_password', :with => 'xpto#2017')
  fill_in('re_password', :with => 'xpto#2017')
  select('Enabled', :from => 'Status')
  find(:id, 'btnSave').click
end

Então(/^empregado sera cadastrado com sucesso$/) do
  
  
  a = find(:id,"personal_txtEmployeeId").value.to_i
  expect(@cadastro).to eq(a)
 
end
  


  

