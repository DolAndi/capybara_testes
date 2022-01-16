Quando('eu faço cadastro') do
  visit '/users/new'
  # diferentes formas de preencher
  fill_in(id: 'user_name', with: 'andriano')
  find('#user_lastname').set('testador')
  fill_in(id: 'user_email', with: 'andriano@teste.com.br')
  fill_in(id: 'user_address', with: 'Rua do Teste')
  fill_in(id: 'user_university', with: 'IMED/RS')
  fill_in(id: 'user_profile', with: 'Desenvolvedor de Testes')
  fill_in(id: 'user_gender', with: 'Masculino')
  fill_in(id: 'user_age', with: '20')
  click_on 'Criar'
  sleep(1)
end

Então('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eql 'Usuário Criado com sucesso'
end