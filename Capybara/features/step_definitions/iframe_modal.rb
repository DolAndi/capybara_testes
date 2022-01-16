Quando('entro no iframe e preencho os campos') do
  visit '/mudancadefoco/iframe'
  within_frame('id_do_iframe') do
    #fazer ações dentor do iframe
    fill_in(id: 'first_name', with: 'Andriano')
    fill_in(id: 'last_name', with: 'Testadir')
  end
end

# Quando('entro no modal e verifico o texto') do
#   visit '/mudancadefoco/modal'
#   click_on ('Abrir')
#   within() do
#     texto = find('h4')
#     expect(texto.text).to eq 'Modal Teste' 
#   end
# end

# Quando('fecho o modal') do
  
# end