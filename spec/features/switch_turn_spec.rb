feature 'switch turn' do


  scenario 'play1\'s turn at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Dave\'s turn"
  end

  scenario 'play2\'s turn after attack' do
    sign_in_and_play
    click_button('Attack')
    click_button('Fight Back!')
    expect(page).to have_content 'Mittens\'s turn'
  end


end