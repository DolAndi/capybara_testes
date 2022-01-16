Quando('eu faço upload de arquivo') do
    visit '/outros/uploaddearquivos'
    attach_file('upload', 'LOCAL DA IMAGEM', make_visible: true)
    
end
  