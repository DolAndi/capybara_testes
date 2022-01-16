Quando('eu entro na janela verifico a mensagem') do
  visit '/mudancadefoco/janela'

  janela = window_opened_by do
    click_link 'Clique aqui'
  end

  #muda o foco para a janela
  within_window janela do
    expect(current_url).to eq ("#{$base_url}/mudancadefoco/newwindow")
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'

  janela.close
  end
end

Quando('eu entro no alert e verifico faço a ação') do
    visit '/mudancadefoco/alert'
    # aceitando o alert
    click_on 'Clique para JS Alert'
    page.accept_alert
    # recusando o alert
    click_on 'Clique para JS Confirm'
    page.dismiss_confirm
    # preenchendo o alert
    click_on 'Clique para JS Prompt'
    page.accept_prompt(with: 'Andriano of the test!' )
    click_on 'Clique para JS Prompt'
    page.dismiss_prompt

  
end