feature 'attack player' do
  scenario 'able to attack Player2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Dave attacks Mittens'
  end
end

feature 'reduce hp' do
  scenario 'Player1 reduces Player2\'s hp by 10 per hit' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Mittens: 40HP'
  end    
end
