Quando('eu marco um checkbox e um radio box') do
  visit '/buscaelementos/radioecheckbox'
  # radiobox
  # tipo 1
  find('label[for="white"]').click
  # tipo 2
  check('purple', allow_label_click: true)
  uncheck('purple', allow_label_click: true)
  # checkbox
  choose('blue', allow_label_click: true)
  choose('yellow', allow_label_click: true)
end