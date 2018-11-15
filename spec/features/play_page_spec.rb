feature 'hit point' do
  scenario 'show Player2\'s Hit Point' do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 50hp'
  end
end



