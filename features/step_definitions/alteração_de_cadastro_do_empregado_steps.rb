#language: pt
#utf-8


Dado(/^que esteja acessado o site ORANGEHRM$/) do


 visit "http://opensource.demo.orangehrmlive.com"
 fill_in('txtUsername', :with => 'Admin')
 fill_in('txtPassword', :with => 'admin')
 find(:id,'btnLogin').click


end

Quando(/^realizar a alteração do cadastro do empregado "([^"]*)"$/) do |arg1|
  
  find(:id, 'menu_pim_viewPimModule').click
  find(:id, 'menu_pim_viewEmployeeList').click
  fill_in('empsearch_id', :with => arg1)
  click_button('searchBtn')
  click_link(arg1)
  find(:id,'btnSave').click
  fill_in('personal_txtEmpFirstName', :with =>'GabeiraVP3')
  fill_in('personal_txtEmpLastName', :with =>'Desafio_Dojo_1')
  fill_in('personal_txtOtherID', :with =>'35812646892')
  fill_in('personal_txtLicenNo', :with =>'080012212121')
  fill_in('personal_txtLicExpDate', :with =>'2018-12-10')
  choose('personal_optGender_1')
  select('Single', :from =>'personal_cmbMarital')
  select('Brazil', :from =>'personal_cmbNation')
  fill_in('personal_DOB', :with =>'1989-12-10')
  find(:id,'btnSave').click

end

Então(/^sera alterado com sucesso$/) do
assert_text('Successfully Saved')


end