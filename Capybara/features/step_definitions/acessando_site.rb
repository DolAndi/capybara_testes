Quando('acesso a url') do
  visit '/treinamento/home'
  sleep(5) #para aguardar na pag tipo o cy.wait
end

Então('eu verifico se estou na página correta.') do
  expect(page).to have_current_path("#{$base_url}/treinamento/home", url: true)
  sleep(5)
end