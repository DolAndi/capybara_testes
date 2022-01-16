Quando('interajo com dropdown e select') do
  visit '/buscaelementos/dropdowneselect'
  find('.dropdown-button').click
  find('#dropdown3').click
  select 'Chrome', from: 'dropdown'
end

Quando('preencho autocomplete') do
  visit '/widgets/autocomplete'
  find('#autocomplete-input').set 'Rio'
  find('ul', text: 'Rio de Janeiro').click
  sleep(2)
end