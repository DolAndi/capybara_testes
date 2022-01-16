Quando('clico em um botao') do
  visit '/buscaelementos/botoes'
  find('#teste').click
  have_text('Você Clicou no Botão!')
end

Entao('verifico se o texto sumiu na tela com sucesso.') do
  find('#teste').click
  has_no_text?('Você Clicou no Botão!')
end